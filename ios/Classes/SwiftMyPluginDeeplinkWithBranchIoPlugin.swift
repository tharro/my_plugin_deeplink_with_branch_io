import Flutter
import UIKit

public class SwiftMyPluginDeeplinkWithBranchIoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "my_plugin_deeplink_with_branch_io", binaryMessenger: registrar.messenger())
    let instance = SwiftMyPluginDeeplinkWithBranchIoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
