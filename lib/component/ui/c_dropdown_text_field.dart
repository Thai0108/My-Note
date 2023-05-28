import '../../base/base.dart';

class CDropdownField extends StatelessWidget {
  const CDropdownField({
    super.key,
    required this.list,
    this.hintText,
    this.hintStyle,
    required this.onChanged,
    this.height,
  });

  final List<Map<String, dynamic>> list;
  final String? hintText;
  final TextStyle? hintStyle;
  final double? height;
  final void Function(String? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Constant.timeAnimationShort,
      height: height ?? 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        // shape: widget.shape,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 10, right: 10),
            hintText: hintText,
            hintStyle: hintStyle ??
                TextStyle(
                  color: Colors.grey,
                  fontSize: 14.fs,
                ),
            border: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            isDense: true,
          ),
          isExpanded: true,
          items: list.map<DropdownMenuItem<String>>(
            (Map<String, dynamic> item) {
              return DropdownMenuItem<String>(
                value: item["value"],
                child: Text(
                  item["name"] ?? "N/A",
                ),
              );
            },
          ).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
