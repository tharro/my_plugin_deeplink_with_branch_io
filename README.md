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
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
