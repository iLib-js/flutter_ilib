# ILibDateFmt JS → Dart 변환 계획서

## 개요

`ILibDateFmt` 클래스를 JavaScript interop(`ILibJS.instance.evaluate()`)에서 순수 Dart 구현으로 전환합니다.

### 현재 상태

- **현재 구현**: 4개의 JS evaluate 호출 (`format`, `getClock`, `getTemplate`, `getMeridiemsRange`)
- **테스트**: 88개 파일
- **데이터**: `assets/locale/` JSON 파일에 필요한 모든 데이터가 이미 준비됨
  - `ilib.data.dateformats` — 로케일별 날짜/시간 포맷 템플릿
  - `ilib.data.sysres` — 번역 문자열 (월/요일 이름, AM/PM 등)
  - `ilib.data.zoneinfo` — 타임존 정보 (DST 규칙 포함)

### 변환 범위

- timezone 포매팅 포함 (z/Z 토큰)
- 모든 캘린더 타입 지원 (gregorian, islamic, hebrew, ethiopic 등)

---

## 아키텍처

### 데이터 흐름

```
ILibDateFmt 생성자
  ├── ILibLocaleInfo → calendar, clock, meridiems 스타일 결정
  ├── ILibLoader.getLocaleData(locale)
  │     ├── ['ilib.data.dateformats'] → 포맷 템플릿
  │     ├── ['ilib.data.sysres'] → 번역 문자열
  │     └── ['ilib.data.zoneinfo'] → 타임존 데이터
  ├── _initTemplate() → 옵션에 따른 포맷 문자열 선택
  ├── _massageTemplate() → clock에 따른 시간 토큰 보정
  └── _tokenize() → 토큰 배열 생성

format(date)
  └── _formatTemplate(date, tokenArr) → 각 토큰을 날짜 값으로 치환
```

### 파일 구조

```
lib/
├── ilib_datefmt.dart              ← 전면 재작성 (핵심)
├── ilib_date.dart                 ← 계산 메서드 추가
├── internal/
│   └── ilib_timezone.dart         ← 새 파일 (타임존 유틸리티)
└── flutter_ilib.dart              ← export 추가
```

---

## 구현 단계

### Step 1: 타임존 유틸리티 (`lib/internal/ilib_timezone.dart`)

`z`/`Z` 토큰 처리를 위한 내부 클래스.

**기능:**
- `getDisplayName(date, style)` — "standard" 스타일: `PDT`, `PST` 등 약어 반환, "rfc822" 스타일: `UTC-0800` 형식 반환
- `inDaylightTime(date)` — 주어진 날짜가 DST 기간인지 판별

**DST 판별 알고리즘:**

zoneinfo 데이터 구조:
```json
{
  "f": "P{c}T",          // 포맷 ({c}에 DST/Standard 문자 삽입)
  "o": "-8:0",           // UTC 오프셋
  "s": {                 // DST 시작 규칙 (Summer)
    "c": "D",            // DST 시 {c}에 들어갈 문자
    "m": 3,              // 월
    "r": "0>8",          // 규칙: "일요일(0)이면서 8일 이후(>) 첫 번째 날"
    "t": "2:0",          // 시각
    "v": "1:0"           // 저축 시간 (1시간)
  },
  "e": {                 // DST 종료 규칙 (End → Standard)
    "c": "S",
    "m": 11,
    "r": "0>1",
    "t": "2:0"
  }
}
```

규칙 문자열 `"r"` 해석:
- `"0>8"` → 일요일(0)이 8일 이후(on or after)인 첫 날
- `"0<15"` → 일요일(0)이 15일 이전(on or before)인 마지막 날
- `"l0"` → 해당 월의 마지막 일요일(0)
- `"f0"` → 해당 월의 첫 번째 일요일(0)
- `"15"` → 해당 월 15일 (고정 날짜)

---

### Step 2: 날짜 유틸리티 메서드 (`lib/ilib_date.dart`)

`ILibDateOptions`에 다음 계산 메서드를 추가:

| 메서드 | 설명 | 구현 방식 |
|--------|------|-----------|
| `getDayOfWeek()` | 0=일~6=토 | Dart `DateTime.weekday` 변환 (1=월~7=일 → 0=일~6=토) |
| `getDayOfYear()` | 1~366 | 누적 월 길이 + 일 |
| `getWeekOfYear()` | ISO 8601 주차 | 표준 ISO 주차 계산 |
| `getWeekOfMonth(locale)` | 월 내 주차 | firstDayOfWeek 기준 계산 |
| `getEra()` | 0=BCE, 1=CE | `year > 0 ? 1 : 0` |

---

### Step 3: ILibDateFmt 핵심 로직 재작성

#### 3-1. 생성자

```dart
ILibDateFmt(ILibDateFmtOptions options) {
  // 옵션 파싱
  // ILibLocaleInfo에서 기본값 획득 (calendar, clock, meridiems)
  // dateformats/sysres/zoneinfo 데이터 로드
  // 템플릿 초기화 (template 옵션 없을 때)
}
```

#### 3-2. 포맷 선택 (`_initTemplate`)

dateformats JSON 구조:
```json
{
  "gregorian": {
    "order": "{date} {time}",  // 또는 길이별 {"s":"...", "m":"...", ...}
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

타입별 처리:
- `"date"` → `formats.date[dateComponents][length]`
- `"time"` → `formats.time[clock][timeComponents][length]`
- `"datetime"` → order 템플릿에 date와 time을 삽입

Stand-alone 포맷 fallback:
- `"m"` → `"l"` (독립형 월)
- `"d"` → `"a"` (독립형 일)
- `"w"` → `"e"` (독립형 요일)
- `"y"` → `"r"` (독립형 연도)

#### 3-3. 시간 보정 (`_massageTemplate`)

- clock=24: 템플릿 내 `h`→`H`, `K`→`k` (따옴표 리터럴 내부는 보존)
- clock=12: 템플릿 내 `H`→`h`, `k`→`K` (따옴표 리터럴 내부는 보존)

#### 3-4. 토크나이저 (`_tokenize`)

```
"d/MM/yyyy" → ["d", "/", "MM", "/", "yyyy"]
"'El' d. 'de' MMMM" → ["'El'", " ", "d", ". ", "'de'", " ", "MMMM"]
```

규칙:
1. 따옴표(`'`) 시작 → 닫는 따옴표까지 하나의 토큰
2. 알파벳 → 동일 문자 연속이 하나의 토큰
3. 그 외 → 비-알파벳/비-따옴표 연속이 하나의 토큰

#### 3-5. 포매팅 엔진 (`_formatTemplate`)

주요 토큰 매핑:

| 토큰 | 출력 | 데이터 소스 |
|------|------|-------------|
| `d`, `dd` | 일 (1, 01) | date.day |
| `M`, `MM` | 월 숫자 | date.month |
| `MMM`, `MMMM` | 월 이름 (약어/전체) | sysres[`MMM{month}`] |
| `N`, `NN` | 월 이름 (1자/2자) | sysres[`N{month}`] |
| `L`, `LL`, `LLL`, `LLLL` | 독립형 월 이름 | sysres (fallback: M 패턴) |
| `E`~`EEEE` | 요일 이름 | sysres[`E{dow}`~`EEEE{dow}`] |
| `c`~`cccc` | 독립형 요일 | sysres |
| `yy`, `yyyy` | 연도 | date.year |
| `h`, `hh` | 12시간 (0→12) | date.hour % 12 |
| `H`, `HH` | 24시간 (0~23) | date.hour |
| `K`, `KK` | 12시간 (0~11) | date.hour % 12 |
| `k`, `kk` | 24시간 (0→24) | date.hour (0을 24로) |
| `m`, `mm` | 분 | date.minute |
| `s`, `ss` | 초 | date.second |
| `S`, `SSS` | 밀리초 | date.millisecond |
| `a` | AM/PM 또는 meridiems | sysres (스타일별 분기) |
| `B` | dayPeriods 기반 | dayPeriods 배열 |
| `G` | Era (BCE/CE) | sysres[`G{era}`] |
| `O` | 서수 (1st, 2nd...) | ordinalChoice 파싱 |
| `w`, `ww` | 연중 주차 | getDayOfWeek 계산 |
| `D`~`DDD` | 연중 일수 | getDayOfYear 계산 |
| `W` | 월중 주차 | getWeekOfMonth 계산 |
| `z` | 타임존 약어 | ILibTimeZone.getDisplayName(standard) |
| `Z` | 타임존 RFC822 | ILibTimeZone.getDisplayName(rfc822) |
| 따옴표 리터럴 | 따옴표 제거 후 그대로 | - |

마지막 단계: native digits 매핑 (useNative 옵션 또는 로케일 기본 설정에 따라)

#### 3-6. sysres 조회 패턴

캘린더별 키를 우선 조회:
```dart
String _getSysString(String key) {
  return (_sysres['$key-$_calName'] as String?) ??
         (_sysres[key] as String?) ?? '';
}
```

---

### Step 4: 보조 메서드

| 메서드 | 동작 |
|--------|------|
| `getClock()` | clock 옵션 → `int` 반환 (12 또는 24) |
| `getTemplate()` | 계산된 포맷 템플릿 문자열 반환 |
| `getMeridiemsRange()` | 현재 meridiems 스타일에 따른 시간대 목록 반환 |
| `getDateComponentOrder()` | "dmy", "mdy" 등 컴포넌트 순서 |

`getMeridiemsRange()` 스타일별 반환값:
- **gregorian** (기본): AM(00:00~11:59), PM(12:00~23:59) — 2개
- **chinese**: 凌晨/早上/上午/中午/下午/傍晚/晚上 — 7개
- **ethiopic**: morning/noon/afternoon/evening/night — 5개

---

### Step 5: ordinalChoice 파서

`O` 토큰을 위한 choice 문자열 처리:

입력: `"1#1st|2#2nd|3#3rd|21#21st|22#22nd|23#23rd|31#31st|#{num}th"`

알고리즘:
1. `|`로 분리
2. 각 항목을 `#`로 분리하여 (조건, 값) 쌍 구성
3. 입력 숫자에 정확히 매칭되는 조건 우선 적용
4. 매칭 없으면 기본값(`#` 앞이 비어있는 것) 사용
5. `{num}` 플레이스홀더를 실제 숫자로 치환

---

### Step 6: 테스트 수정 & 통합

#### 테스트 setUp 변경 (88개 파일)

```dart
// Before (JS interop)
await ILibJS.instance.loadJS();
ILibJS.instance.initILib();
await ILibJS.instance.loadILibLocaleData('en-US');

// After (순수 Dart)
await ILibLoader.instance.loadJSON();
ILibLoader.instance.initILib();
await ILibLoader.instance.loadILibLocaleData('en-US');
```

#### 기타 정리

- `flutter_ilib.dart`에 `export 'ilib_datefmt.dart'` 추가
- `ILibDateFmt`에서 `ILibJS` import 제거
- `toJsonString()` 메서드 제거
- `execute_unit_test.sh`에서 datefmt 테스트 제외 조건 제거

---

## 의존성 관계

```
Step 1 (TimeZone) ──────┐
Step 2 (날짜 유틸리티) ──┼──→ Step 3 (DateFmt 핵심) → Step 4 (보조 메서드) → Step 6 (테스트)
Step 5 (ordinalChoice) ─┘
```

Step 1, 2, 5는 서로 독립적이므로 병렬 진행 가능.

---

## 검증 방법

```bash
# 단위 테스트 (대표 로케일)
flutter test test/datefmt/datefmt_en_US_test.dart
flutter test test/datefmt/datefmt_ko_KR_test.dart
flutter test test/datefmt/datefmt_ar_SA_test.dart

# 특수 기능 테스트
flutter test test/datefmt/datefmt_Clock_test.dart
flutter test test/datefmt/datefmt_Meridiems_test.dart

# 전체 datefmt
for f in test/datefmt/*_test.dart; do flutter test "$f"; done

# 리그레션 (전체 프로젝트)
./execute_unit_test.sh
```

---

## 주의사항

1. **따옴표 리터럴 보존**: `_massageTemplate`의 clock 변환과 `_tokenize` 모두에서 `'...'` 내부를 건드리지 않아야 함
2. **캘린더 alias**: `formats['islamic']`이 문자열 `"gregorian"`일 경우 `formats['gregorian']`을 사용
3. **dayPeriods**: 일부 로케일(ko, zh 등)에 `dayPeriods` 배열이 존재 — `B` 토큰의 유연한 시간대 표현용
4. **native digits**: 최종 출력 문자열의 모든 아라비아 숫자를 해당 스크립트 숫자로 매핑
5. **length가 문자열일 수 있음**: dateformats의 값이 `{s, m, l, f}` 객체가 아닌 단일 문자열일 수 있음 (모든 길이에 동일 포맷)
6. **en-US 데이터 없음**: `en-US.json`이 별도로 존재하지 않음. `root.json` → `en.json` → `und-US.json` 머지로 구성됨
