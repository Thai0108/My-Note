import 'package:intl/intl.dart';

import 'base.dart';

extension ExScafold on Scaffold {
  Widget get removeFocus => Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () => FocusScope.of(Get.context!).requestFocus(FocusNode()),
          child: Container(
            color: kColorPrimary.withOpacity(1),
            child: SafeArea(
              bottom: false,
              child: this,
            ),
          ),
        ),
      );
}

extension ExInt on num? {
  double get sp => (this ?? 0) * Constant.scale;

  double get w => Get.width * (this ?? 0);

  double get h => Get.height * (this ?? 0);

  double get fs => (this ?? 0) * Constant.scale;
}

extension ExString on String? {
  String get value => this ?? "N/A";

  double get toDouble => double.parse(this ?? "0");

  int get toInt {
    try {
      return int.parse(this ?? "0");
    } catch (e) {
      return double.parse(this ?? "0").toInt();
    }
  }

  bool get toBool => (this ?? "N/A").trim().toLowerCase() == "true";

  String sprintf(List listParams) {
    var value = this ?? "N/A";

    for (var item in listParams) {
      value = value.replaceFirst("%s", "$item");
    }

    return value;
  }
}

extension ExDateTime on DateTime {
  DateTime afterTime(Duration duration) {
    int time = 60000 * duration.inMinutes + millisecondsSinceEpoch;
    return DateTime.fromMillisecondsSinceEpoch(time);
  }

  String withFormat([String? format]) {
    format ??= "dd/MM/yyyy";
    return DateFormat(format).format(this);
  }
}
