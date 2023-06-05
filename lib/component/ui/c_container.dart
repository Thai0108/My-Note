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
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
