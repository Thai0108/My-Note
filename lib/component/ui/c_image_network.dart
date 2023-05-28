import 'dart:io';

import 'package:flutter/material.dart';

import 'c_image_dialog.dart';
import 'c_shimmer.dart';

class CImageNetwork extends StatelessWidget {
  final String? url, asset;
  final File? file;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final bool openView;
  final Function()? onTap;

  const CImageNetwork({
    Key? key,
    this.asset,
    this.url,
    this.file,
    this.height,
    this.width,
    this.fit,
    this.color,
    this.padding,
    this.onTap,
    this.openView = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTap?.call();
          if (!openView) return;
          assert(file != null || url != null, "File or url not null");
          showDialog(
            context: context,
            barrierColor: const Color.fromARGB(165, 0, 0, 0),
            builder: (_) => file != null ? CImageDialog(file: file) : CImageDialog(url: url),
          );
        },
        child: file != null
            ? Image.file(
                file!,
                height: height,
                width: width,
                fit: fit ?? BoxFit.contain,
                errorBuilder: _errorBuilder,
              )
            : url != null
                ? Image.network(
                    url!,
                    height: height,
                    width: width,
                    fit: fit ?? BoxFit.contain,
                    loadingBuilder: _loading,
                    errorBuilder: _errorBuilder,
                  )
                : asset != null
                    ? Image.asset(
                        asset!,
                        errorBuilder: _errorBuilder,
                      )
                    : _errorBuilder(context, "", null));
  }

  Widget _errorBuilder(BuildContext context, Object object, StackTrace? stackTrace) => Image.asset(
        'assets/images/image.png',
        fit: fit ?? BoxFit.cover,
        alignment: Alignment.center,
        width: width,
        height: height,
      );

  Widget _loading(BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) return child;
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey.shade700,
      child: IntrinsicHeight(
        child: IntrinsicWidth(
          child: Container(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
