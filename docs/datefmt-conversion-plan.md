# ILibDateFmt Implementation Reference

## Overview

`ILibDateFmt` is a pure-Dart formatter: it reads `assets/locale/` JSON and formats dates in Dart
(it replaced the former JavaScript interop, `ILibJS.instance.evaluate()`). This file documents how
the implemented formatter works — data flow, tokens, templates, DST, and the sysres lookup.

### Data used
- `ilib.data.dateformats` — locale-specific date/time format templates
- `ilib.data.sysres` — translated strings (month/day names, AM/PM, etc.)
- `ilib.data.zoneinfo` — timezone info (including DST rules)

### Scope
- Timezone formatting (`z`/`Z` tokens)
- All calendar types (gregorian, islamic, hebrew, ethiopic, etc.)

> History: this replaced 4 JS `evaluate` calls (`format`, `getClock`, `getTemplate`,
> `getMeridiemsRange`) across 88 test files; the required JSON data already existed in
> `assets/locale/`.

---

## Architecture

### Data Flow

```
ILibDateFmt constructor
  ├── ILibLocaleInfo → determines calendar, clock, meridiems style
  ├── ILibLoader.getLocaleData(locale)
  │     ├── ['ilib.data.dateformats'] → format templates
  │     ├── ['ilib.data.sysres'] → translated strings
  │     └── ['ilib.data.zoneinfo'] → timezone data
  ├── _initTemplate() → selects format string based on options
  ├── _massageTemplate() → adjusts time tokens based on clock
  └── _tokenize() → generates token array

format(date)
  ├── _resolveDateOptions(date) → resolve a Flutter DateTime/unixtime to
  │                               Gregorian wall-clock components (Notes #8)
  ├── _convertToFormatterCalendar(date) → calendar conversion if needed
  └── _formatTemplate(date, tokenArr) → replaces each token with date values
```

### File Structure

```
lib/
├── ilib_datefmt.dart              ← core formatter
├── ilib_date.dart                 ← date calculation methods
├── ilib_timezone.dart             ← timezone utility
└── flutter_ilib.dart              ← export
```

---

## Implementation (by layer)

### Step 1: Timezone Utility (`lib/ilib_timezone.dart`)

Internal class for `z`/`Z` token processing.

**Features:**
- `getDisplayName(date, style)` — "standard" style: returns abbreviations like `PDT`, `PST`; "rfc822" style: returns format like `UTC-0800`
- `inDaylightTime(date)` — determines if given date is in DST period

**DST Detection Algorithm:**

zoneinfo data structure:
```json
{
  "f": "P{c}T",          // format ({c} replaced with DST/Standard character)
  "o": "-8:0",           // UTC offset
  "s": {                 // DST start rule (Summer)
    "c": "D",            // character to insert at {c} during DST
    "m": 3,              // month
    "r": "0>8",          // rule: "Sunday(0) on or after(>) the 8th"
    "t": "2:0",          // time
    "v": "1:0"           // savings time (1 hour)
  },
  "e": {                 // DST end rule (End → Standard)
    "c": "S",
    "m": 11,
    "r": "0>1",
    "t": "2:0"
  }
}
```

Rule string `"r"` interpretation:
- `"0>8"` → first Sunday(0) on or after the 8th
- `"0<15"` → last Sunday(0) on or before the 15th
- `"l0"` → last Sunday(0) of the month
- `"f0"` → first Sunday(0) of the month
- `"15"` → the 15th of the month (fixed date)

---

### Step 2: Date Utility Methods (`lib/ilib_date.dart`)

`ILibDateOptions` provides these calculation methods:

| Method | Description | Implementation |
|--------|-------------|----------------|
| `getDayOfWeek()` | 0=Sun~6=Sat | Delegates to `_toCalendarDate().getDayOfWeek()` |
| `getDayOfYear()` | 1~366 | Cumulative month lengths + day |
| `getWeekOfYear()` | ISO 8601 week | Standard ISO week calculation |
| `getWeekOfMonth(locale)` | Week within month | Calculated based on firstDayOfWeek |
| `getEra()` | 0=BCE, 1=CE | `year > 0 ? 1 : 0` |

---

### Step 3: ILibDateFmt Core Logic

#### 3-1. Constructor

```dart
ILibDateFmt(ILibDateFmtOptions options) {
  // Parse options
  // Get defaults from ILibLocaleInfo (calendar, clock, meridiems)
  // Load dateformats/sysres/zoneinfo data
  // Initialize template (when no template option provided)
}
```

#### 3-2. Format Selection (`_initTemplate`)

dateformats JSON structure:
```json
{
  "gregorian": {
    "order": "{date} {time}",  // or length-specific {"s":"...", "m":"...", ...}
    "date": {
      "dmy": {"s": "M/d/yy", "m": "MMM d, yyyy", "l": "MMMM d, yyyy", "f": "MMMM d, yyyy"},
      "dm": {...}, "my": {...}, ...
    },
    "time": {
      "12": {"ahm": "h:mm a", "hms": "h:mm:ss", ...},
      "24": {"ahm": "H:mm", "hms": "H:mm:ss", ...}
    }
  },
  "islamic": "gregorian"  // alias
}
```

Processing by type:
- `"date"` → `formats.date[dateComponents][length]`
- `"time"` → `formats.time[clock][timeComponents][length]`
- `"datetime"` → insert date and time into order template

Stand-alone format fallback:
- `"m"` → `"l"` (stand-alone month)
- `"d"` → `"a"` (stand-alone day)
- `"w"` → `"e"` (stand-alone weekday)
- `"y"` → `"r"` (stand-alone year)

#### 3-3. Clock Adjustment (`_massageTemplate`)

- clock=24: replace `h`→`H`, `K`→`k` in template (preserve content inside quote literals)
- clock=12: replace `H`→`h`, `k`→`K` in template (preserve content inside quote literals)

#### 3-4. Tokenizer (`_tokenize`)

```
"d/MM/yyyy" → ["d", "/", "MM", "/", "yyyy"]
"'El' d. 'de' MMMM" → ["'El'", " ", "d", ". ", "'de'", " ", "MMMM"]
```

Rules:
1. Starts with quote (`'`) → single token until closing quote
2. Alphabetic → consecutive same characters form one token
3. Other → consecutive non-alpha/non-quote characters form one token

#### 3-5. Formatting Engine (`_formatTemplate`)

Key token mapping:

| Token | Output | Data Source |
|-------|--------|-------------|
| `d`, `dd` | day (1, 01) | date.day |
| `M`, `MM` | month number | date.month |
| `MMM`, `MMMM` | month name (abbr/full) | sysres[`MMM{month}`] |
| `N`, `NN` | month name (1-char/2-char) | sysres[`N{month}`] |
| `L`, `LL`, `LLL`, `LLLL` | stand-alone month name | sysres (fallback: M pattern) |
| `E`~`EEEE` | weekday name | sysres[`E{dow}`~`EEEE{dow}`] |
| `c`~`cccc` | stand-alone weekday | sysres |
| `yy`, `yyyy` | year | date.year |
| `h`, `hh` | 12-hour (0→12) | date.hour % 12 |
| `H`, `HH` | 24-hour (0~23) | date.hour |
| `K`, `KK` | 12-hour (0~11) | date.hour % 12 |
| `k`, `kk` | 24-hour (0→24) | date.hour (0 becomes 24) |
| `m`, `mm` | minute | date.minute |
| `s`, `ss` | second | date.second |
| `S`, `SSS` | millisecond | date.millisecond |
| `a` | AM/PM or meridiems | sysres (branched by style) |
| `B` | dayPeriods-based | dayPeriods array |
| `G` | Era (BCE/CE) | sysres[`G{era}`] |
| `O` | ordinal (1st, 2nd...) | ordinalChoice parsing |
| `w`, `ww` | week of year | calDate.getWeekOfYear() |
| `D`~`DDD` | day of year | calDate.getDayOfYear() |
| `W` | week of month | calDate.getWeekOfMonth(locale) |
| `z` | timezone abbreviation | ILibTimeZone.getDisplayName(standard) |
| `Z` | timezone RFC822 | ILibTimeZone.getDisplayName(rfc822) |
| quote literal | remove quotes, output as-is | - |

Final step: native digits mapping (based on useNative option or locale default)

#### 3-6. sysres Lookup Pattern

Calendar-specific key is checked first:
```dart
String _getSysString(String key) {
  return (_sysres['$key-$_calName'] as String?) ??
         (_sysres[key] as String?) ?? '';
}
```

---

### Step 4: Helper Methods

| Method | Behavior |
|--------|----------|
| `getClock()` | clock option → returns `int` (12 or 24) |
| `getTemplate()` | returns computed format template string |
| `getMeridiemsRange()` | returns time period list based on current meridiems style |
| `getDateComponentOrder()` | returns "dmy", "mdy", etc. component order |

`getMeridiemsRange()` return values by style:
- **gregorian** (default): AM(00:00~11:59), PM(12:00~23:59) — 2 entries
- **chinese**: 7 entries (dawn/morning/forenoon/noon/afternoon/evening/night)
- **ethiopic**: 5 entries (morning/noon/afternoon/evening/night)

---

### Step 5: ordinalChoice Parser

Choice string processing for the `O` token:

Input: `"1#1st|2#2nd|3#3rd|21#21st|22#22nd|23#23rd|31#31st|#{num}th"`

Algorithm:
1. Split by `|`
2. Split each item by `#` to form (condition, value) pairs
3. Apply exact match for input number first
4. If no match, use default (entry with empty condition before `#`)
5. Replace `{num}` placeholder with actual number

---

### Step 6: Test Setup & Integration

#### Test setUp Change (88 files)

```dart
// Before (JS interop)
await ILibJS.instance.loadJS();
ILibJS.instance.initILib();
await ILibJS.instance.loadILibLocaleData('en-US');

// After (Pure Dart)
await ILibLoader.instance.loadJSON();  // initILib() called internally
await ILibLoader.instance.loadILibLocaleData('en-US');
```

#### Migration cleanup (done)

The one-time migration also added the `ilib_datefmt.dart` export to `flutter_ilib.dart`, removed
the `ILibJS` import and `toJsonString()` from `ILibDateFmt`, and removed the datefmt test exclusion
from `execute_unit_test.sh`.

---

## Dependency Graph

```
Step 1 (TimeZone) ──────────┐
Step 2 (Date utilities) ────┼──→ Step 3 (DateFmt core) → Step 4 (Helper methods) → Step 6 (Tests)
Step 5 (ordinalChoice) ─────┘
```

Steps 1, 2, and 5 are independent and can be done in parallel.

---

## Verification

```bash
# Unit tests (representative locales)
flutter test test/date/datefmt_en_US_test.dart
flutter test test/date/datefmt_ko_KR_test.dart
flutter test test/date/datefmt_ar_SA_test.dart

# Special feature tests
flutter test test/date/datefmt_Clock_test.dart
flutter test test/date/datefmt_Meridiems_test.dart

# All datefmt tests
for f in test/date/*_test.dart; do flutter test "$f"; done

# Regression (full project)
./execute_unit_test.sh
```

---

## Important Notes

1. **Quote literal preservation**: Both `_massageTemplate` clock conversion and `_tokenize` must not modify content inside `'...'`
2. **Calendar alias**: When `formats['islamic']` is the string `"gregorian"`, use `formats['gregorian']` instead
3. **dayPeriods**: Some locales (ko, zh, etc.) have a `dayPeriods` array — used for flexible time period display via `B` token
4. **Native digits**: Map all Arabic numerals in the final output string to the corresponding script digits
5. **Length may be a string**: dateformats values can be a single string instead of `{s, m, l, f}` object (same format for all lengths)
6. **No en-US data file**: `en-US.json` does not exist separately. Composed by merging `root.json` → `en.json` → `und-US.json`
7. **Calendar conversion**: See [calendar-conversion.md](./calendar-conversion.md) for cross-calendar date conversion logic in `format()`
8. **Flutter `DateTime`/`unixtime` input — distinguish naive vs. UTC, then convert the calendar**: a Flutter `DateTime` carries a kind. `format()` honours it (`_resolveDateOptions`):
   - **naive `DateTime(...)`** (no zone): use its **wall components directly** (`dt.year`/`dt.hour`/…). This is host-independent (the wall value is the same on every machine) and matches `package:intl`, which formats a `DateTime`'s fields without shifting zones.
   - **`DateTime.utc(...)` / `unixtime`** (an explicit instant): apply the **formatter's timezone** offset, then take the components — i.e. convert the instant into the target zone.

   In both cases the resulting Gregorian date is then converted to the formatter's calendar via **Julian Day** when they differ (`_convertToFormatterCalendar`), so non-Gregorian locales show the converted date — am-ET → "16 ሰኔ 2018", **not** the raw Gregorian "23 የካቲት 2026". Do **not** treat a naive `DateTime` as a host-zone instant (via `millisecondsSinceEpoch`): that makes formatting host-dependent (passes on a KST dev box, fails on a UTC CI runner). JS's instant path *is* host-dependent for locally-constructed `Date`s, but that is a JS quirk worth diverging from for a Flutter API — naive `DateTime` input is Dart-specific and has no JS contract. Regression: `test/date/datefmt_datetime_calendar_extra_test.dart`.
