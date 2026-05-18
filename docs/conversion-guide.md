# JS → Dart 변환 가이드

flutter_ilib의 JavaScript interop 의존성을 순수 Dart로 전환하는 작업 가이드.

## 배경

- **develop 브랜치**: `flutter_js` 패키지의 `JavascriptRuntime`을 사용하여 iLib JS 라이브러리를 런타임에 evaluate
- **convertToDart 브랜치**: JS 런타임 제거 → JSON 로케일 데이터를 직접 로드하여 순수 Dart로 처리

## 변환 현황

### 완료

| 클래스 | 파일 | 방식 |
|--------|------|------|
| `ILibLocaleInfo` | `lib/ilib_localeinfo.dart` | JSON 데이터 조회 |
| `ILibLocale` | `lib/ilib_locale.dart` | 순수 Dart 파싱 |
| `ILibCaseMapper` | `lib/ilib_casemapper.dart` | Dart Map 기반 매핑 |
| `ILibLoader` | `lib/ilib_init.dart` | `rootBundle`로 JSON 로드 (구 `ILibJS`) |
| `ILibDate` | `lib/ilib_date.dart` | JS 의존성 없음 |

### 미완료

| 클래스 | 파일 | JS 호출 수 | 우선순위 제안 |
|--------|------|-----------|--------------|
| `ILibCountry` | `lib/ilib_country.dart` | 5 | 1순위 — 구조 단순 |
| `ILibScriptInfo` | `lib/ilib_scriptinfo.dart` | 7 | 2순위 — 구조 단순 |
| `ILibDurationFmt` | `lib/ilib_durationfmt.dart` | 5 | 3순위 |
| `ILibDateFmt` | `lib/ilib_datefmt.dart` | 6 | 4순위 — 로직 복잡 |
| `ILibNumFmt` | `lib/ilib_numfmt.dart` | 14 | 5순위 — 가장 복잡 |

## 변환 패턴

### Before (JS interop)

```dart
// develop 브랜치 — ILibJS.evaluate()로 JS 코드 실행
String getClock() {
  final String jscode = 'new LocaleInfo("$locale").getClock()';
  final String result = ILibJS.instance.evaluate(jscode).stringResult;
  return result;
}
```

### After (순수 Dart)

```dart
// convertToDart 브랜치 — JSON 데이터에서 직접 조회
String getClock() {
  return (_info['clock'] as String?) ?? (_defaultInfo['clock'] as String);
}
```

## 변환 단계별 체크리스트

### 1. 데이터 분석

- [ ] `ilib_js/{ClassName}.js`에서 해당 클래스가 사용하는 데이터 키 파악
- [ ] `assets/locale/root.json` 등에서 해당 데이터의 JSON 키 확인 (예: `ilib.data.localeinfo`)
- [ ] 필요한 데이터가 JSON에 이미 존재하는지 검증

### 2. 데이터 준비 (필요시)

- [ ] 누락된 데이터가 있으면 iLib 데이터 생성 도구로 JSON 파일 재생성
- [ ] `assets/locale/` 에 파일 추가
- [ ] `pubspec.yaml`의 assets 경로 확인

### 3. Dart 코드 작성

- [ ] 클래스 생성자에서 `ILibLoader.instance.getLocaleData(locale)` 사용
- [ ] 데이터 키로 접근: `getLocaleData(locale)?['ilib.data.{클래스키}']`
- [ ] `_defaultInfo` static const Map으로 기본값 정의
- [ ] 각 getter를 `(_info['key'] as Type?) ?? fallback` 패턴으로 변환
- [ ] `import 'ilib_init.dart'`에서 `ILibJS` → `ILibLoader` 참조 변경

### 4. 정리

- [ ] `flutter_ilib.dart`의 export 확인
- [ ] 기존 테스트 실행하여 동일 결과 확인
- [ ] JS interop import 제거 (`flutter_js`, `dart:ffi` 등)

## 핵심 인프라

### ILibLoader (lib/ilib_init.dart)

변환의 핵심 컴포넌트. develop의 `ILibJS`를 대체.

```dart
// 싱글톤 접근
ILibLoader.instance

// 로케일 데이터 조회 (이미 머지된 Map 반환)
Map<String, dynamic>? data = ILibLoader.instance.getLocaleData('ko-KR');

// 특정 클래스 데이터 접근
Map<String, dynamic>? localeInfo = data?['ilib.data.localeinfo'];
```

### 데이터 로드 흐름

```
앱 시작 → ILibLoader.loadJSON()
       → getJSONDataPaths(locale)로 로드할 파일 목록 생성
       → root.json → {lang}.json → und-{region}.json → {lang}-{region}.json 순서로 로드
       → deepMerge로 계층적 병합
       → _localeDataMap에 캐시
```

### JSON 데이터 구조

```json
{
  "ilib.data.localeinfo": { "clock": "24", "timezone": "Asia/Seoul", ... },
  "ilib.data.scriptinfo": { ... },
  "ilib.data.numfmt": { ... }
}
```

각 JSON 파일은 여러 `ilib.data.*` 키를 포함할 수 있음. 로드 후 deepMerge되어 최종 데이터 구성.

## 참고 자료

- `ilib_js/` — JS 원본 소스 (로직 참고용)
- `assets/locale/` — 218개 JSON 로케일 데이터 파일 (iLib v14.21.0 기준)
- `docs/architecture.md` — 전체 아키텍처 문서
- `test/` — 기존 테스트 (변환 후 검증용)
