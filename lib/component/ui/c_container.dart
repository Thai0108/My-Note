import 'package:not_a_note/base/b_extension.dart';
import 'package:not_a_note/component/shared/color.dart';
import 'package:flutter/material.dart';

class CContainer extends StatelessWidget {
  const CContainer({
    super.key,
    this.child,
    this.padding,
    this.height,
    this.width,
    this.margin,
  });
  final Widget? child;
  final EdgeInsetsGeometry? padding, margin;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      margin: margin ??
          EdgeInsets.symmetric(
            vertical: .015.w,
            horizontal: .03.w,
          ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(color: kColorShadow, blurRadius: 5, spreadRadius: 3),
        ],
      ),
      child: child,
    );
  }
}
