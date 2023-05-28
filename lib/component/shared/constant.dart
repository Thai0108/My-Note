import 'dart:math';

import '../../base/base.dart';

class Constant {
  static const double borderRadius = 8.0;

  Constant._();

  static double get scale => min(Get.width / 400, Get.height / 900);

  static bool get isTablet => context.mediaQueryShortestSide > 600;

  static Duration timeAnimationShort = const Duration(milliseconds: 200);
  static Duration timeAnimationLong = const Duration(milliseconds: 500);
  static Duration timeRequest = const Duration(seconds: 20);
  static String pathApi = "http://192.168.10.9:4000";
  static String clientSecret = "NBiJ2aCTS65haei0iWhVepd122XI2xfd";
  static int maxLength = 30;
  static double fontSize = 14;
  static OverlayEntry? overlayEntry;

  static bool removeOverlay() {
    if (overlayEntry != null) {
      overlayEntry?.remove();
      overlayEntry = null;
      return true;
    }
    return false;
  }

}
