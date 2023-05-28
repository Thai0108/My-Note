import 'package:not_a_note/component/shared/share_preferences.dart';

import '../../base/base.dart';
import 'generated/l10n.dart';

class CLanguage {
  CLanguage._();

  static late Locale _currentLocale;

  static Locale get locale => _currentLocale;

  static bool changeLocale(Locale value) {
    if (!AppLanguage.delegate.isSupported(value) || locale.languageCode == value.languageCode) {
      return false;
    }
    _currentLocale = value;

    AppLanguage.load(value);
    Get.forceAppUpdate();

    return true;
  }

  static Locale init() {
    final languageCode = BPrefs.getString(SPrefs.keyLanguage);

    if (languageCode != null && languageCode.isNotEmpty && AppLanguage.delegate.isSupported(Locale(languageCode))) {
      _currentLocale = locale;
    } else {
      _currentLocale = AppLanguage.delegate.supportedLocales.first;
    }

    return _currentLocale;
  }
}
