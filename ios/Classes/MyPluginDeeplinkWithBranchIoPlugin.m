#import "MyPluginDeeplinkWithBranchIoPlugin.h"
#if __has_include(<my_plugin_deeplink_with_branch_io/my_plugin_deeplink_with_branch_io-Swift.h>)
#import <my_plugin_deeplink_with_branch_io/my_plugin_deeplink_with_branch_io-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "my_plugin_deeplink_with_branch_io-Swift.h"
#endif

@implementation MyPluginDeeplinkWithBranchIoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMyPluginDeeplinkWithBranchIoPlugin registerWithRegistrar:registrar];
}
@end
