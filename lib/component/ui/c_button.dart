import '../../base/base.dart';

// ignore: must_be_immutable
class CButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  final TextStyle? textStyle;
  final double? height, minWidth;
  Color? color;
  Color? borderColor;
  Color? splashColor;
  Color? highlightColor;
  Widget? child;

  CButton({
    Key? key,
    this.onPressed,
    this.text,
    this.child,
    this.splashColor,
    this.highlightColor,
    this.textStyle,
    this.height,
    this.minWidth,
    this.color,
    this.borderColor,
  }) : super(key: key) {
    child ??= Container();
    color ??= kColorPrimary;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        FocusScope.of(context).requestFocus(FocusNode());
        if (onPressed != null) onPressed!();
      },
      color: color,
      disabledColor: kColorPrimary,
      elevation: 0,
      height: height,
      splashColor: splashColor,
      highlightColor: highlightColor,
      minWidth: minWidth,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(
          color: borderColor ?? Colors.transparent,
          width: 1,
        ),
      ),
      child: text != null
          ? Text(
              text!,
              style: textStyle ??
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
            )
          : child,
    );
  }
}
