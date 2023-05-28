import 'package:not_a_note/component/language/generated/l10n.dart';

import 'base.dart';

export '../component/shared/color.dart';
export '../component/shared/constant.dart';

export 'b_extension.dart';
export 'b_shared_preferences.dart';
export 'b_switch_screen.dart';
export 'b_toast.dart';
export '../component/shared/style.dart';

export 'package:get/get.dart';
export 'package:flutter/material.dart';
export 'package:synchronized/synchronized.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter_svg/flutter_svg.dart';

export 'dart:convert';

ThemeData get themeData => Theme.of(Get.context!);
EdgeInsets get screenPadding => MediaQuery.of(Get.context!).padding;
BuildContext get context => Get.context!;
AppLanguage kLanguage = AppLanguage.of(context);

void kPrint(Object? object) {
  if (kDebugMode) {
    print(object);
  }
}
