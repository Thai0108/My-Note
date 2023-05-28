import 'package:not_a_note/base/base.dart';
import 'package:intl/intl.dart';

class Helper {
  static int textToNumber(String value) {
    value = value.replaceAll('.', '');
    value = value.replaceAll(',', '');
    return int.parse(value);
  }

  static String timeStampToDateTime(String? givenDateTime, String dateFormat) {
    if (givenDateTime == null) return 'N/A';
    try {
      final DateTime docDateTime = DateTime.parse(givenDateTime).toLocal();
      return DateFormat(dateFormat).format(docDateTime);
    } catch (e) {
      if (givenDateTime.length > 4 && (givenDateTime.contains('-') || givenDateTime.contains('/'))) {
        return givenDateTime;
      }
      if (kDebugMode) {
        print(e);
      }
      return 'N/A';
    }
  }

  static String timeIntToDateTime(int? givenDateTime, String dateFormat) {
    if (givenDateTime == null) return 'N/A';
    try {
      return DateFormat(dateFormat).format(DateTime.fromMillisecondsSinceEpoch(givenDateTime));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return 'N/A';
    }
  }

  static String moneyFormat(value) => NumberFormat('###').format(value).toVND();
}

extension FormatCurrencyEx on dynamic {
  String toVND({String? unit = ''}) {
    double number = double.parse(toString());
    var vietNamFormatCurrency = NumberFormat.currency(locale: "vi-VN", symbol: unit);
    return vietNamFormatCurrency.format(number).trim();
  }
}
