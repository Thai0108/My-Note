import 'dart:async';

import 'package:loading_indicator/loading_indicator.dart';

import '../../base/base.dart';
import 'c_button.dart';
import 'c_line.dart';

class CDialog {
  final Future? function;
  static final _lock = Lock();

  CDialog([this.function]);

  static final _lLoading = <String>[
    kLanguage.loading1,
    kLanguage.loading2,
    kLanguage.loading,
  ];
  static var _index = 0;
  static final _rxText = _lLoading[_index].obs;
  static Timer? _timer;

  Future<T?> loading<T>({String? title, bool hasCancel = false}) async => await _lock.synchronized(() => _loading<T>(title, hasCancel));

  Future<T?> _loading<T>(String? title, [bool hasCancel = false]) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (title == null) {
      _timer = Timer.periodic(const Duration(milliseconds: 300), (_) {
        _index++;
        if (_index >= _lLoading.length) {
          _index = 0;
        }
        _rxText.value = _lLoading[_index];
      });
    }

    Get.dialog(
      WillPopScope(
        onWillPop: () async => hasCancel,
        child: Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Center(
            child: Container(
              width: 150,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 50,
                      padding: const EdgeInsets.only(top: 10, bottom: 5),
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballSpinFadeLoader,
                        colors: [kColorPrimary],
                        strokeWidth: 2,
                        backgroundColor: Colors.transparent,
                        pathBackgroundColor: Colors.transparent,
                      ),
                    ),
                    title != null ? Text(title) : Obx(() => Text(_rxText.value)),
                    SizedBox(
                      height: .02.w,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      barrierDismissible: hasCancel,
    );

    T? value;
    if (function != null) {
      try {
        value = await function!;
      } catch (e, s) {
        kPrint(e);
        kPrint(s);
      }
    }
    _timer?.cancel();
    Get.back();
    return value;
  }

  Future<T?> alert<T>({
    Function(T? data)? onResult,
    String? title,
    String? content,
    Widget? child,
    String? submit,
    Function()? onSubmit,
    bool showClose = true,
  }) async =>
      await _lock.synchronized(() => _alert<T>(
            onResult,
            title,
            content,
            child,
            submit,
            onSubmit,
            showClose,
          ));

  Future<T?> _alert<T>(
    Function(T? data)? onResult,
    String? title,
    String? content,
    Widget? child,
    String? submit,
    Function()? onSubmit,
    bool showClose,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());

    title ??= kLanguage.alert;
    _loading(null);

    T? value;
    dynamic data;
    if (function != null) {
      value = await function!;
      if (onResult != null) {
        data = await onResult(value);
      }
    }

    Get.dialog(
      Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: .75.w,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: .02.w,
                      ),
                      const CLine(),
                    ],
                  ),
                ),
                SizedBox(
                  height: .02.w,
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: .4.h),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: content != null
                        ? Text(content, textAlign: TextAlign.center)
                        : data is String
                            ? Text(data, textAlign: TextAlign.center)
                            : child ?? (data is Widget ? data : const SizedBox()),
                  ),
                ),
                SizedBox(
                  height: .04.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (showClose)
                      CButton(
                        text: kLanguage.close,
                        color: kColorBorder,
                        onPressed: (onSubmit != null && submit == null) ? onSubmit : () => Get.back(),
                      ),
                    if (submit != null)
                      Padding(
                        padding: EdgeInsets.only(left: showClose ? 15 : 0),
                        child: CButton(
                          text: submit,
                          onPressed: () {
                            Get.back();
                            if (onSubmit != null) onSubmit();
                          },
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: .02.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return value;
  }
}
