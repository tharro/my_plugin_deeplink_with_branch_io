# my_plugin_deeplink_with_branch_io

Plugin for Branch IO.

## Configuration

### Android

Add comment below to yourproject/android/app/build.gradle
```
productFlavors {
  dev {
    ...
    resValue "string", "branch_scheme", ""
    resValue "string", "uri_scheme", ""
    resValue "string", "key_branch", ""
    resValue "string", "test_mode", "true"
  }
  stage {
    ...
    resValue "string", "branch_scheme", ""
    resValue "string", "uri_scheme", ""
    resValue "string", "key_branch", ""
    resValue "string", "test_mode", "true"
  }
  prod {
    ...
    resValue "string", "branch_scheme", ""
    resValue "string", "uri_scheme", ""
    resValue "string", "key_branch", ""
    resValue "string", "test_mode", "false"
  }
}
```

Add comment below to yourproject/android/app/src/main/AndroidManifest.xml
```
<application>
  ...
  <activity>
  ...
  <!-- Branch URI Scheme -->
  <intent-filter>
      <data android:scheme="@string/uri_scheme" android:host="open" />
      <action android:name="android.intent.action.VIEW" />
      <category android:name="android.intent.category.DEFAULT" />
      <category android:name="android.intent.category.BROWSABLE" />
  </intent-filter>

  <!-- Branch App Links (optional) -->
  <intent-filter android:autoVerify="true">
      <action android:name="android.intent.action.VIEW" />
      <category android:name="android.intent.category.DEFAULT" />
      <category android:name="android.intent.category.BROWSABLE" />
      <data android:scheme="https" android:host="@string/branch_scheme" />
  </intent-filter>
  </activity>
  
  <meta-data android:name="io.branch.sdk.BranchKey" android:value="@string/key_branch"/>
  <meta-data android:name="io.branch.sdk.BranchKey.test" android:value="@string/key_branch"/>
  <meta-data android:name="io.branch.sdk.TestMode" android:value="@string/test_mode" />
</application>
```

### iOS
Add comment below to yourproject/ios/Runner/Info.plist

```
<key>branch_app_domain</key>
<string>$(BRANCH_LINK_DOMAIN)</string>
<key>branch_key</key>
<string>$(BRANCH_KEY)</string>
```

Open Runner.xcworkspace, select Runner -> Build Settings, click "+" and choose Add User-Defined Setting
```
BRANCH_KEY <string>
BRANCH_LINK_DOMAIN <string>
```
### Flutter

pubspec.yaml
```
my_pluign_deeplink_with_branch_io:
  git:
    url: https://github.com/tharro/my_pluign_deeplink_with_branch_io
    ref: 0525f55268856d12520eee5611ddeeffaf6ccc5e
```

In app.dart file:
```
import 'package:my_pluign_deeplink_with_branch_io/my_plugin_deeplink_with_branch_io.dart';

MyPluginDeepLinkWithBranchIO.init(onDeepLink: (Map<String, dynamic> data) {

});

dispose() {
  MyPluginDeepLinkWithBranchIO.dispose();
}
```
