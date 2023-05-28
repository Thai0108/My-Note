import '../../base/base.dart';

class CTextFieldDate extends StatefulWidget {
  final double? height;
  final String? textHint;
  final TextStyle? style;
  final DateTime? firstDate, lastDate, currentDate;
  final String? format;
  final String Function(DateTime dateTime)? onChoiceDate;
  Color? color;

  CTextFieldDate({
    Key? key,
    this.height = 40,
    this.textHint,
    this.style,
    this.firstDate,
    this.lastDate,
    this.currentDate,
    this.onChoiceDate,
    this.format,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  State<CTextFieldDate> createState() => _CTextFieldDateState();
}

class _CTextFieldDateState extends State<CTextFieldDate> {
  String? value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: showChoiceDate,
      child: Container(
        height: widget.height,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(
            width: 1,
            color: kColorBorder,
          ),
          borderRadius: BorderRadius.circular(Constant.borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                value ?? widget.textHint ?? "--- ${kLanguage.choiceDate} ---",
                style: value != null ? widget.style ?? kStyleNormal : kStyleHint,
              ),
            ),
            Icon(
              Icons.date_range_rounded,
              color: kColorPrimary,
            ),
          ],
        ),
      ),
    );
  }

  void showChoiceDate() async {
    var date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: widget.firstDate ?? DateTime.now(),
      lastDate: widget.lastDate ?? DateTime.now().afterTime(const Duration(days: 7)),
      currentDate: widget.currentDate ?? DateTime.now(),
    );

    if (date == null) return;

    widget.onChoiceDate?.call(date);
    setState(() {
      value = date.withFormat(widget.format);
    });
  }
}
