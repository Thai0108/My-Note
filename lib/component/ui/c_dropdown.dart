import '../../base/base.dart';
import '../shared/style.dart';
import 'c_line.dart';

class CDropdown<O> extends StatefulWidget {
  ///text hiển thị khi chưa chọn giá trị nào
  final String? textHint;

  ///chiều cao tối đa của khung chọn dữ liệu
  final double? maxHeight;

  ///chiều cao dropdown
  final double height;

  ///list dữ liệu cho dropdown
  final List<O>? listData;

  /// hàm lấy dữ liệu cho dropdown
  final Future<List<O>> Function()? getListData;

  ///hàm xây dựng widget item
  final Widget Function(int index, O object) buildItem;

  ///hàm set giá trị hiển thị
  final String Function(int index, O object) setValue;

  ///có hiển thị dòng phân cách trong dropdown hay không
  final bool hintLine;

  /// style text
  final TextStyle? style;

  /// color Container
  final Color? color;

  const CDropdown({
    Key? key,
    this.textHint,
    this.listData,
    required this.setValue,
    required this.buildItem,
    this.maxHeight,
    this.hintLine = false,
    this.height = 40,
    this.style,
    this.color = Colors.white,
    this.getListData,
  }) : super(key: key);

  @override
  State<CDropdown<O>> createState() => _CDropdownState<O>();
}

class _CDropdownState<O> extends State<CDropdown<O>> {
  double height = 200;
  late GlobalKey key;
  String? value;
  var onCallApi = 0;
  List<O> listData = [];

  @override
  void initState() {
    super.initState();
    listData = widget.listData ?? [];

    if (widget.maxHeight != null) {
      height = widget.maxHeight!;
    }
    if (widget.key is GlobalKey) {
      key = widget.key as GlobalKey;
    } else {
      key = GlobalKey();
    }
    callApi();
  }

  void callApi() async {
    if (widget.getListData != null && onCallApi == 0) {
      onCallApi = 1;
      try {
        listData.clear();
        listData.addAll(await widget.getListData!());
      } catch (_) {}
      onCallApi = 2;

      if (Constant.removeOverlay()) {
        showData();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: showData,
      child: Container(
        key: key,
        height: widget.height,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(
            width: 1,
            color: kColorBorder,
          ),
          borderRadius: BorderRadius.circular(Constant.borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  value ?? widget.textHint ?? kLanguage.choice,
                  style: value != null ? widget.style ?? kStyleNormal : kStyleHint,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Icon(Icons.arrow_drop_down_outlined),
          ],
        ),
      ),
    );
  }

  void showData() {
    if (Constant.removeOverlay()) return;
    FocusScope.of(context).requestFocus(FocusNode());

    Constant.overlayEntry = OverlayEntry(
      builder: (context) {
        var renderBox = key.currentContext?.findRenderObject() as RenderBox;
        var offset = renderBox.localToGlobal(Offset.zero);
        var sizeBox = renderBox.size;
        var top = offset.dy + sizeBox.height + height;
        if (top > 1.h) {
          top = 1.h - sizeBox.height - height;
        } else {
          top = offset.dy + sizeBox.height;
        }

        return GestureDetector(
          onTap: Constant.removeOverlay,
          child: Container(
            color: Colors.transparent,
            width: 1.w,
            height: 1.h,
            child: Stack(
              children: [
                Positioned(
                  top: top,
                  width: sizeBox.width,
                  left: offset.dx,
                  child: Material(
                    child: FutureBuilder(
                      future: 0.delay().then((value) => true),
                      builder: (context, snapshot) {
                        return AnimatedContainer(
                          duration: Constant.timeAnimationShort,
                          constraints: BoxConstraints(maxHeight: snapshot.hasData ? height : 0),
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 10,
                            right: 10,
                            bottom: 7,
                          ),
                          decoration: BoxDecoration(
                            color: kColorBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(Constant.borderRadius),
                              bottomRight: Radius.circular(Constant.borderRadius),
                              topLeft: Radius.circular(Constant.borderRadius * .5),
                              topRight: Radius.circular(Constant.borderRadius * .5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: kColorShadow,
                                blurRadius: 9,
                                spreadRadius: 3,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: listData.isEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    onCallApi == 1 ? kLanguage.onGetData : kLanguage.noValue,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              : ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: listData.length,
                                  itemBuilder: (context, index) => GestureDetector(
                                    onTap: () async {
                                      await Constant.timeAnimationShort.delay();
                                      Constant.removeOverlay();
                                      setState(() {
                                        if (listData[index] == null) {
                                          value = null;
                                          return;
                                        }
                                        value = widget.setValue(index, listData[index]);
                                      });
                                    },
                                    child: Container(
                                      color: Colors.transparent,
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          listData[index] == null
                                              ? Text(
                                                  widget.textHint ?? kLanguage.choice,
                                                  style: kStyleNormal,
                                                )
                                              : widget.buildItem(index, listData[index]),
                                          if (index < listData.length - 1 && !widget.hintLine) const CLine(margin: EdgeInsets.symmetric(vertical: 5)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    Get.key.currentState?.overlay?.insert(Constant.overlayEntry!);
  }
}
