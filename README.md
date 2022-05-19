# my_plugin_deeplink_with_branch_io

Plugin for Branch IO.

## Configuration

### Android

Add comment below to yourproject/android/app/build.gradle

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

[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
