# Firebase Hosting 배포 시 dotenv 환경 변수 설정 가이드

## 현재 설정 상태

### ✅ 설정 완료된 항목
1. **pubspec.yaml**: `.env` 파일이 assets에 포함되어 있음
2. **main.dart**: `dotenv.load(fileName: '.env')` 호출 및 에러 처리 추가
3. **api_service.dart**: 환경 변수가 비어있을 경우 경고 로그 출력

### ⚠️ 확인 필요 사항

#### 1. .env 파일 존재 여부
프로젝트 루트에 `.env` 파일이 있어야 합니다:
```
TEST_API_URL=https://your-api-url.com
```

#### 2. 빌드 시 .env 파일 포함 확인
Flutter Web 빌드 시 `.env` 파일이 `build/web/assets/.env`에 포함되는지 확인:
```bash
flutter build web
ls -la build/web/assets/.env
```

#### 3. Firebase Hosting 배포 시 주의사항
- `.env` 파일이 빌드 결과물에 포함되므로 **민감한 정보는 포함하지 마세요**
- 프로덕션 환경에서는 다른 방식으로 환경 변수를 주입하는 것을 권장합니다

## 문제 해결

### dotenv가 로드되지 않는 경우

1. **빌드 확인**
   ```bash
   flutter clean
   flutter pub get
   flutter build web
   ```

2. **.env 파일 위치 확인**
   - 프로젝트 루트에 `.env` 파일이 있어야 함
   - `pubspec.yaml`의 `assets` 섹션에 `.env`가 포함되어 있어야 함

3. **브라우저 콘솔 확인**
   - 개발자 도구 콘솔에서 `[WARNING] Failed to load .env file` 메시지 확인
   - `[WARNING] API base URL is empty` 메시지 확인

4. **대안: 환경 변수를 코드에 직접 주입**
   ```dart
   // api_service.dart
   String get apiBaseUrl {
     // 빌드 시 환경 변수 주입
     const String? apiUrl = String.fromEnvironment('API_URL');
     if (apiUrl != null && apiUrl.isNotEmpty) {
       return apiUrl;
     }
     return dotenv.env['TEST_API_URL'] ?? '';
   }
   ```
   
   빌드 시:
   ```bash
   flutter build web --dart-define=API_URL=https://your-api-url.com
   ```

## 권장 사항

1. **프로덕션 환경**: `--dart-define` 사용
2. **개발 환경**: `.env` 파일 사용
3. **보안**: 민감한 정보는 절대 `.env` 파일에 포함하지 마세요


