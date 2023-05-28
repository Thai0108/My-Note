import 'package:device_info_plus/device_info_plus.dart';

import '../../base/base.dart';

class SDeviceInfo {
  SDeviceInfo._();

  static AndroidDeviceInfo? _androidInfo;
  static IosDeviceInfo? _iosInfo;

  static String _id = "";

  static String get id => _id;
  static String _model = "";

  static String get model => _model;

  static Future<void> init() async {
    try {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

      if (GetPlatform.isAndroid) {
        _androidInfo = await deviceInfo.androidInfo;
        _id = _androidInfo!.id;
        _model = "${_androidInfo!.model} (${_androidInfo!.brand} ${_androidInfo!.version.release})";
      } else if (GetPlatform.isIOS) {
        _iosInfo = await deviceInfo.iosInfo;
        _id = _iosInfo!.identifierForVendor!;
        _model = "${_iosInfo!.name!} (${_iosInfo!.systemName!} ${_iosInfo!.systemVersion!})";
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
