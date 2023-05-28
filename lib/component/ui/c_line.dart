import 'package:flutter/material.dart';

import '../shared/color.dart';

class CLine extends StatelessWidget {
  final Symmetric symmetric;
  final double? width, height;
  final Color? color;
  final EdgeInsets? margin;

  const CLine({
    Key? key,
    this.symmetric = Symmetric.horizontal,
    this.width,
    this.height,
    this.color,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? (symmetric == Symmetric.horizontal ? double.infinity : 1),
      height: height ?? (symmetric == Symmetric.vertical ? double.infinity : 1),
      margin: margin,
      color: color ?? kColorBorder,
    );
  }
}

enum Symmetric { horizontal, vertical }
