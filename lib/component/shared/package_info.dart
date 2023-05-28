import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SPackageInfo {
  SPackageInfo._();

  static late PackageInfo _packageInfo;

  static String get appName => _packageInfo.appName;

  static String get packageName => _packageInfo.packageName;

  static String get version => _packageInfo.version;

  static String get buildNumber => _packageInfo.buildNumber;

  static Future<void> init() async {
    try {
      _packageInfo = await PackageInfo.fromPlatform();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
