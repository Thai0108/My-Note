import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class CImageDialog extends StatelessWidget {
  final String? url;
  final File? file;
  const CImageDialog({
    super.key,
    this.url,
    this.file,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(15),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: AspectRatio(
        aspectRatio: 1,
        child: PhotoView.customChild(
          backgroundDecoration: const BoxDecoration(color: Colors.transparent),
          child: file != null
              ? Image.file(
                  file!,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      padding: const EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Image.asset(
                        'assets/images/image.png',
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    );
                  },
                )
              : url != null
                  ? ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        url!,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            padding: const EdgeInsets.all(50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            child: Image.asset(
                              'assets/images/image.png',
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          );
                        },
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Image.asset(
                        'assets/images/image.png',
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
        ),
      ),
    );
  }
}
