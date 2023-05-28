import 'package:intl/intl.dart';

extension FormatCurrencyEx on dynamic {
  String toVND({String? unit = ''}) {
    int number = int.parse(toString());
    var vietNamFormatCurrency = NumberFormat.currency(locale: "vi-VN", symbol: unit);
    return vietNamFormatCurrency.format(number).trim();
  }
}
