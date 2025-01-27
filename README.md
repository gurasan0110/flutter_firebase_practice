# flutter_firebase_practice

https://pub.dev/packages/firebase_auth

https://github.com/firebase/FirebaseUI-Flutter/tree/main/packages/firebase_ui_auth

minSdkは23以上にしろと怒られた

android/app/build.gradleを修正

```gradle
android {
  defaultConfig {
    minSdk = 23
  }
}
```
