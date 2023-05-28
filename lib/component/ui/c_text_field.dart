import 'package:flutter/services.dart';

import '../../base/base.dart';

class CTextField extends StatefulWidget {
  final Color background, colorVisibility;
  final double radius;
  final double? height, width, widthVisibility;
  final TextStyle? textStyle;
  final List<BoxShadow>? listShadow;
  final Widget? prefix, suffix;
  final bool showClear;
  final bool readOnly;
  final BoxBorder? border;
  final BoxShape shape;
  final BoxConstraints? constraints;
  final String? hintText;
  final int? maxLines;
  final TypeTF typeTF;
  final int? maxLength;
  final TextAlignVertical? textAlignVertical;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final void Function(String content)? onSubmitted, onChanged;
  final void Function()? onTap, onEditingComplete, onClearTap;
  TextInputType keyboardType;
  TextEditingController? controller;
  EdgeInsets? margin, padding;
  FocusNode? focusNode;
  TextStyle? hintStyle;
  TextInputAction? textInputAction;

  CTextField({
    Key? key,
    this.background = Colors.white,
    this.colorVisibility = Colors.black45,
    this.margin = EdgeInsets.zero,
    this.padding,
    this.radius = 8,
    this.textStyle,
    this.maxLength,
    this.listShadow,
    this.inputFormatters,
    this.height = 40,
    this.width,
    this.textAlignVertical,
    this.maxLines = 1,
    this.prefix,
    this.suffix,
    this.showClear = true,
    this.readOnly = false,
    this.controller,
    this.focusNode,
    this.onSubmitted,
    this.onTap,
    this.onClearTap,
    this.onChanged,
    this.onEditingComplete,
    this.onAppPrivateCommand,
    this.border,
    this.shape = BoxShape.rectangle,
    this.constraints,
    this.hintText,
    this.hintStyle,
    this.typeTF = TypeTF.normal,
    this.keyboardType = TextInputType.text,
    this.widthVisibility,
    this.textInputAction,
  }) : super(key: key);

  @override
  State<CTextField> createState() => _PTextFieldState();
}

class _PTextFieldState extends State<CTextField> {
  TextInputType? keyboardType;
  EdgeInsets? margin, padding;
  late FocusNode focusNode;
  TextStyle? hintStyle, textStyle;
  late TextEditingController controller;

  double? _fontSize;
  var _showClear = false;
  var _visibility = false;
  late final inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(widget.radius),
    borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.5)),
  );

  @override
  void initState() {
    super.initState();
    controller = widget.controller ??= TextEditingController();
    focusNode = widget.focusNode ?? FocusNode();
    padding = widget.padding ?? const EdgeInsets.only(left: 8);
    margin = widget.margin;
    _fontSize = (widget.textStyle?.fontSize == null ? 13.fs : widget.textStyle!.fontSize) ?? 13.fs;

    hintStyle = widget.hintStyle ??
        TextStyle(
          color: kColorTextHint,
          fontSize: _fontSize,
        );
    textStyle = widget.textStyle ??
        TextStyle(
          fontSize: _fontSize,
        );

    if (widget.typeTF == TypeTF.password) {
      keyboardType = TextInputType.visiblePassword;
      _visibility = true;
    } else {
      keyboardType = widget.keyboardType;
    }
    controller.addListener(() {
      if (widget.showClear && controller.text.isNotEmpty != _showClear) {
        if (!mounted) return;
        setState(() {
          _showClear = !_showClear;
        });
      }
    });
    focusNode.addListener(() {
      if (!mounted || widget.controller == null) return;
      if (widget.showClear && focusNode.hasFocus && controller.text.isNotEmpty != _showClear) {
        _showClear = !_showClear;
        setState(() {});
      } else if (!focusNode.hasFocus) {
        _showClear = false;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      margin: margin,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.background,
        borderRadius: BorderRadius.circular(widget.radius),
        boxShadow: widget.radius == -1
            ? []
            : [
                BoxShadow(
                  color: Colors.grey.withOpacity(.1),
                  blurRadius: 3.sp,
                  offset: Offset(1.sp, 1.sp),
                ),
              ],
      ),
      child: TextField(
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        textAlignVertical: widget.textAlignVertical ?? TextAlignVertical.top,
        expands: widget.maxLines == null ? true : false,
        readOnly: widget.readOnly,
        controller: widget.controller,
        focusNode: focusNode,
        style: textStyle,
        keyboardType: keyboardType,
        inputFormatters: widget.inputFormatters,
        cursorHeight: _fontSize,
        obscureText: _visibility,
        onSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onTap: widget.onTap,
        textInputAction: widget.textInputAction,
        onAppPrivateCommand: widget.onAppPrivateCommand,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: _fontSize!,
            bottom: (widget.height != null && _fontSize! - 5 >= widget.height! / 2) ? _fontSize! - 5 : 0,
          ),
          prefixIcon: widget.prefix,
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.typeTF == TypeTF.password)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _visibility = !_visibility;
                      });
                    },
                    child: SvgPicture.asset(
                      _visibility ? "assets/icons/ic_visibility_off.svg" : "assets/icons/ic_visibility.svg",
                      width: widget.widthVisibility ?? 20.sp,
                      color: widget.colorVisibility,
                    ),
                  ),
                ),
              if (widget.showClear && _showClear)
                GestureDetector(
                  onTap: widget.onClearTap ?? widget.controller?.clear,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(3.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                            )
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.close_outlined,
                            color: kColorGrey,
                            size: 15.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (widget.suffix != null) widget.suffix! else SizedBox(width: 10.sp),
            ],
          ),
          hintText: widget.hintText,
          hintStyle: hintStyle ??
              TextStyle(
                color: Colors.grey,
                fontSize: 13.fs,
              ),
          border: inputBorder,
          enabledBorder: inputBorder,
          focusedBorder: inputBorder,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          disabledBorder: inputBorder.copyWith(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.1),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}

enum TypeTF {
  normal,
  password,
}
