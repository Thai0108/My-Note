import 'dart:async';

import 'package:not_a_note/base/base.dart';
import 'package:not_a_note/component/ui/c_dialog.dart';
import 'package:geolocator/geolocator.dart';

class SLocation {
  SLocation._();

  static Future<Position> get data async => await Geolocator.getCurrentPosition();

  static Stream<Position> get onLocationChanged => Geolocator.getPositionStream();

  static Future<bool> checkPermission() async {
    try {
      var permission = await Geolocator.checkPermission();

      if (!(await Geolocator.isLocationServiceEnabled())) {
        await CDialog().alert(
          content: kLanguage.alertPermissionLocation,
          onSubmit: Geolocator.openLocationSettings,
        );
      }

      if (!(permission == LocationPermission.always || permission == LocationPermission.whileInUse)) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        await CDialog().alert(
          content: kLanguage.alertPermissionLocation,
          onSubmit: Geolocator.openLocationSettings,
        );
      }

      return permission == LocationPermission.always || permission == LocationPermission.whileInUse;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return false;
  }
}
