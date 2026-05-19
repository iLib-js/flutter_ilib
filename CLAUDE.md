# flutter_ilib — JS-to-Dart Conversion Project

## Project Goal
iLib JavaScript interop(`flutter_js`)을 완전히 제거하고 순수 Dart 구현으로 전환.
JSON locale 데이터를 직접 읽어 formatting/calculation을 수행하는 구조.

## Architecture

### Before (JS Interop)
```dart
String getClock() {
  final String jscode = 'new LocaleInfo("$locale").getClock()';
  return ILibJS.instance.evaluate(jscode).stringResult;
}
```

### After (Pure Dart)
```dart
String getClock() {
  return (_info['clock'] as String?) ?? (_defaultInfo['clock'] as String);
}
```

### Data Flow
```
Options → ILibLocaleInfo (locale, calendar, clock, meridiems 결정)
        → ILibLoader.getLocaleData(locale) → 병합된 JSON Map
        → 'ilib.data.{dataType}' 키로 데이터 추출
        → 순수 Dart 계산
```

## Conversion Status

### Completed (Pure Dart)
| Class | File | 핵심 데이터 |
|-------|------|------------|
| ILibLoader | `lib/ilib_init.dart` | JSON 로드/병합 인프라 |
| ILibLocale | `lib/ilib_locale.dart` | BCP-47 파싱 |
| ILibLocaleInfo | `lib/ilib_localeinfo.dart` | `ilib.data.localeinfo` |
| ILibCaseMapper | `lib/ilib_casemapper.dart` | Dart Map lookups |
| ILibDate | `lib/ilib_date.dart` | 날짜 계산 |
| ILibDateFmt | `lib/ilib_datefmt.dart` | `ilib.data.dateformats` + `sysres` + `zoneinfo` |
| ILibTimeZone | `lib/ilib_timezone.dart` | `ilib.data.zoneinfo` DST 계산 |
| ILibCalendar | `lib/ilib_calendar.dart` + `lib/calendar/` | Calendar factory + abstract base |
| GregorianDate | `lib/calendar/gregorian_date.dart` | Gregorian 날짜 |
| GregRataDie | `lib/calendar/greg_rata_die.dart` | Gregorian RD 계산 |
| ThaiSolarDate | `lib/calendar/thaisolar_date.dart` | Thai Solar 날짜 |
| ThaiSolarRataDie | `lib/calendar/thaisolar_rata_die.dart` | Thai Solar RD 계산 |
| JulianDate | `lib/calendar/julian_date.dart` | Julian 날짜 |
| JulianRataDie | `lib/calendar/julian_rata_die.dart` | Julian RD 계산 |
| IslamicDate | `lib/calendar/islamic_date.dart` | Islamic 날짜 |
| IslamicRataDie | `lib/calendar/islamic_rata_die.dart` | Islamic RD 계산 |
| HebrewDate | `lib/calendar/hebrew_date.dart` | Hebrew 날짜 |
| HebrewRataDie | `lib/calendar/hebrew_rata_die.dart` | Hebrew RD 계산 |
| EthiopicDate | `lib/calendar/ethiopic_date.dart` | Ethiopic 날짜 |
| EthiopicRataDie | `lib/calendar/ethiopic_rata_die.dart` | Ethiopic RD 계산 |
| CopticDate | `lib/calendar/coptic_date.dart` | Coptic 날짜 |
| CopticRataDie | `lib/calendar/coptic_rata_die.dart` | Coptic RD 계산 |
| PersianAlgoDate | `lib/calendar/persian_algo_date.dart` | Algorithmic (2820-year cycle) |
| PersianAlgoRataDie | `lib/calendar/persian_algo_rata_die.dart` | Algorithmic RD 계산 |
| PersianDate | `lib/calendar/persian_date.dart` | Astronomical (춘분 기반) |
| PersianRataDie | `lib/calendar/persian_rata_die.dart` | Astronomical RD 계산 |
| ILibAstro | `lib/calendar/ilib_astro.dart` | 천문학 계산 (`ilib.data.astro`) |
| ILibDateOptions | `lib/ilib_date.dart` | `_toCalendarDate()` 캘린더별 위임 |

### Remaining (Still uses ILibJS)
| Class | File | ILibJS 호출 수 | 난이도 |
|-------|------|---------------|--------|
| ILibCountry | `lib/ilib_country.dart` | 5 | 낮음 |
| ILibScriptInfo | `lib/ilib_scriptinfo.dart` | 7 | 낮음 |
| ILibDurationFmt | `lib/ilib_durationfmt.dart` | 4 | 중간 |
| ILibNumFmt | `lib/ilib_numfmt.dart` | 12 | 높음 |

## Conversion Pattern (How to Convert a Class)

### Step 1: JS 소스 분석
- `ilib_js/` 폴더에서 원본 JS 파일을 읽고 어떤 데이터/계산이 필요한지 파악
- `require()` 의존성 확인

### Step 2: JSON 데이터 확인
- `assets/locale/root.json`에서 해당 클래스의 데이터 키 확인 (e.g., `ilib.data.numfmt`)
- 특정 locale 파일에서 실제 데이터 구조 파악

### Step 3: Dart 구현
```dart
class ILibXxx {
  ILibXxx(String locale) {
    final Map<String, dynamic>? localeData =
        ILibLoader.instance.getLocaleData(locale);
    _data = (localeData?['ilib.data.xxx'] as Map<String, dynamic>?) ??
        <String, dynamic>{};
  }

  late Map<String, dynamic> _data;

  // fallback defaults
  static const Map<String, dynamic> _defaultData = <String, dynamic>{...};

  String getSomething() {
    return (_data['key'] as String?) ?? (_defaultData['key'] as String);
  }
}
```

### Step 4: 테스트 업데이트
setUpAll에서 `ILibJS` → `ILibLoader` 변경:
```dart
setUpAll(() async {
  await ILibLoader.instance.loadJSON();
  ILibLoader.instance.initILib();
  await ILibLoader.instance.loadILibLocaleData('en-US');
});
```

### Step 5: 검증
```bash
flutter test test/{해당 테스트 파일}
flutter analyze lib/{해당 파일}
```

## Key Infrastructure

### ILibLoader (`lib/ilib_init.dart`)
- Singleton: `ILibLoader.instance`
- `loadJSON()` — 현재 시스템 locale 데이터 로드
- `getLocaleData(locale)` — 병합된 locale 데이터 반환
- `loadILibLocaleData(locale)` — 추가 locale 로드
- JSON 로드 순서: `root.json` → `{lang}.json` → `und-{region}.json` → `{lang}-{region}.json`

### JSON Data Keys
- `ilib.data.astro` — 천문학 계수 (equinox, delta-T, nutation 등, Persian astronomical용)
- `ilib.data.localeinfo` — locale 메타 (clock, calendar, timezone, digits 등)
- `ilib.data.dateformats` — 날짜/시간 포맷 템플릿 (calendar별)
- `ilib.data.sysres` — 번역 문자열 (월/요일 이름, AM/PM 등)
- `ilib.data.zoneinfo` — 시간대 + DST 규칙
- `ilib.data.numfmt` — 숫자 포맷 패턴
- `ilib.data.scriptinfo` — 스크립트 메타
- `ilib.data.durationfmt` — 기간 포맷

### Locale Data
- `assets/locale/` 아래 218개 JSON 파일
- iLib v14.21.0 기반, CLDR 46.0

## File Structure
```
lib/
├── flutter_ilib.dart           # export hub
├── ilib_init.dart              # ILibLoader
├── ilib_locale.dart            # BCP-47 locale
├── ilib_localeinfo.dart        # locale 메타정보
├── ilib_date.dart              # 날짜 옵션/계산
├── ilib_datefmt.dart           # 날짜 포맷팅 엔진
├── ilib_timezone.dart          # 시간대/DST
├── ilib_calendar.dart          # Calendar factory + abstract base
├── ilib_casemapper.dart        # 대소문자 변환
├── ilib_country.dart           # [미변환] 국가 정보
├── ilib_durationfmt.dart       # [미변환] 기간 포맷
├── ilib_numfmt.dart            # [미변환] 숫자 포맷
├── ilib_scriptinfo.dart        # [미변환] 스크립트 정보
├── calendar/                   # Calendar 개별 구현
│   ├── calendar_utils.dart     # mod() 헬퍼
│   ├── ilib_astro.dart         # 천문학 계산 유틸리티
│   ├── gregorian_cal.dart
│   ├── thaisolar_cal.dart
│   ├── julian_cal.dart
│   ├── islamic_cal.dart
│   ├── persian_algo_cal.dart   # Algorithmic (2820-year cycle)
│   ├── persian_cal.dart        # Astronomical (equinox-based)
│   ├── persian_date.dart       # Astronomical Persian date
│   ├── persian_rata_die.dart   # Astronomical Persian RD
│   ├── ethiopic_cal.dart
│   ├── coptic_cal.dart
│   └── hebrew_cal.dart
└── internal/
    ├── ilib_utils.dart         # getLocale(), getJSONDataPaths() 등
    └── logger/
```

## Conventions

### Code Style
- `flutter analyze` 통과 필수
- 명시적 타입 선언 (`always_specify_types`)
- single quotes, `@override` annotation
- 불필요한 주석 금지

### Naming
- Public 클래스: `ILib` prefix (e.g., `ILibDateFmt`)
- Calendar 구현: suffix `Cal` (e.g., `GregorianCal`)
- Options 클래스: suffix `Options` (e.g., `ILibDateFmtOptions`)

### Testing
- 테스트 파일 위치: `test/` 하위 feature별 폴더
- `TestWidgetsFlutterBinding.ensureInitialized()` 필수 (asset 로드에 필요)
- Calendar 등 순수 계산 클래스는 locale 로드 없이 테스트 가능

### Public API Export
- `lib/flutter_ilib.dart`에서 모든 public 클래스 export
- 새 파일 추가 시 export 라인 추가 필수

## Calendar Type 매핑

| type 문자열 | Dart 클래스 | 비고 |
|------------|-------------|------|
| `'persian'` | `PersianDate` / `PersianCal` | Astronomical (춘분 기반) |
| `'persian-algo'` | `PersianAlgoDate` / `PersianAlgoCal` | Algorithmic (2820-year cycle) |

`ILibDateOptions._toCalendarDate()`에서 `type`/`calendar` 필드를 확인하여
해당 캘린더의 `ILibCalendarDate` 인스턴스를 생성하고, `getDayOfWeek()` 등 모든
날짜 계산 메서드를 위임합니다.

## DateFmt Calendar Conversion Logic

`ILibDateFmt.format()` 내부의 `_convertToFormatterCalendar()` 메서드는 JS `DateFmt.format()`
(DateFmt.js:1537-1566)와 동일한 역할을 수행합니다:

### 동작 규칙
1. **캘린더가 다를 때** (e.g., Islamic 날짜 → Gregorian 포맷터):
   - 입력 날짜를 `ILibCalendarDate`로 생성 → Julian Day 추출 → 포맷터 캘린더로 재생성
2. **캘린더가 같을 때** (e.g., ThaiSolar 날짜 → ThaiSolar 포맷터):
   - `ILibDateOptions`를 그대로 반환 (raw 값 유지, 정규화하지 않음)
   - `_formatTemplate` 내에서 요일/주차 등 캘린더 계산이 필요한 토큰만 `_getCalendarDate()`로 lazy 변환

### JS와의 차이점 주의
- JS의 `GregorianDate`는 components로 생성 시 raw year/month/day를 정규화하지 않음
  (존재하지 않는 날짜도 그대로 유지, e.g., 2011/2/29)
- Dart의 `GregorianDate`는 항상 `_calcDateComponents()`로 정규화함
- 따라서 캘린더가 같을 때 `ILibDateOptions` → `ILibCalendarDate` 변환을 하면 안 됨
  (raw 값이 정규화되어 테스트 실패)

### 관련 메서드 (`lib/ilib_datefmt.dart`)
- `_convertToFormatterCalendar()` — 캘린더 변환 판단 및 실행
- `_createCalendarDate()` — 캘린더 타입별 `ILibCalendarDate` 팩토리
- `_getCalendarDate()` — `_formatTemplate` 내 lazy 캘린더 계산용

## Deferred Work
- **Han Calendar**: lunar 계산(`_lunarLongitude`, `_newMoonTime` 등) 추가 필요. `ILibAstro`에 확장 예정.

## Running Tests
```bash
# 특정 테스트 파일
flutter test test/calendar/calendar_test.dart

# 기본 테스트 모음
flutter test test/basic/

# 전체 datefmt 테스트
flutter test test/datefmt/

# 분석
flutter analyze
```
