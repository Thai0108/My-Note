import 'dart:math';

import 'package:not_a_note/component/shared/utils.dart';

import '../../base/base.dart';
import 'c_shimmer.dart';

class CCallApi<O> extends StatefulWidget {
  final CCallApiController controller;

  final Widget? buildLoading;
  final Widget? buildSuccess;
  final Widget? buildError;
  final TypeLoading typeLoading;

  const CCallApi({
    Key? key,
    required this.controller,
    this.buildLoading,
    this.buildSuccess,
    this.buildError,
    this.typeLoading = TypeLoading.list,
  }) : super(key: key);

  @override
  State<CCallApi<O>> createState() => _CCallApiState<O>();
}

class _CCallApiState<O> extends State<CCallApi<O>> {
  late final LinearGradient shimmerGradient;
  late CCallApiStatus status = CCallApiStatus.none;

  @override
  void initState() {
    super.initState();
    widget.controller.status.listen((status) {
      setState(() {
        this.status = status;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case CCallApiStatus.onLoading:
        return widget.buildLoading ?? buildLoading();
      case CCallApiStatus.onSuccess:
        return widget.buildSuccess ?? buildSuccess();
      case CCallApiStatus.onError:
        return widget.buildError ?? buildError();
      case CCallApiStatus.none:
        return const SizedBox();
    }
  }

  Widget buildLoading() {
    switch (widget.typeLoading) {
      case TypeLoading.list:
        return loadingList();
      case TypeLoading.table:
        return loadingTable();
      case TypeLoading.word:
        return loadingWord();
      default:
        return loadingList();
    }
  }

  Widget buildError() {
    return widget.buildError ?? const SizedBox();
  }

  Widget buildSuccess() {
    return widget.buildSuccess ?? const SizedBox();
  }

  Widget loadingList() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.sp),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: List.generate(
            Utils.randomInt(1, 2),
            (index) => Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.grey.shade700,
                child: Container(
                  padding: EdgeInsets.all(10.sp),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      Utils.randomInt(4, 5),
                      (index) => Container(
                        height: 13.sp,
                        margin: EdgeInsets.symmetric(vertical: 5.sp),
                        width: Utils.randomDouble(.4, 1) * 1.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget loadingTable() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.sp),
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.grey.shade700,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: List.generate(
              Utils.randomInt(5, 7),
              (index) => Row(
                children: List.generate(
                  5,
                  (indexRow) => Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.sp),
                      margin: const EdgeInsets.symmetric(horizontal: .2),
                      width: double.infinity,
                      height: 30.sp,
                      decoration: BoxDecoration(
                        color: index == 0 ? Colors.white : null,
                        border: Border.all(width: .5),
                      ),
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget loadingWord() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.sp),
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.grey.shade700,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            Utils.randomInt(10, 17),
            (index) {
              final isNewLine = index % 2 == 0 && index != 0 && Random().nextBool();
              return Container(
                margin: EdgeInsets.only(
                  top: 2.sp,
                  bottom: (isNewLine ? 8 : 2).sp,
                  right: (isNewLine ? Utils.randomInt(50, 200) : 0).sp,
                ),
                width: double.infinity,
                height: 13.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CCallApiController {
  Rx<CCallApiStatus> status = CCallApiStatus.none.obs;

  void reload() => status.refresh();

  void onCall() => status.value = CCallApiStatus.onLoading;

  void onSuccess() => status.value = CCallApiStatus.onSuccess;

  void onError() => status.value = CCallApiStatus.onError;

  void onNone() => status.value = CCallApiStatus.none;
}

enum CCallApiStatus { none, onLoading, onSuccess, onError }

enum TypeLoading { list, table, word }
