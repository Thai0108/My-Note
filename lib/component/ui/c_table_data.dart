import '../../base/base.dart';

class CTable<O> extends StatefulWidget {
  /// danh sách tiêu đề
  final List<CTableHeader> listHeader;

  /// list dữ liệu
  final List<O> initList;

  /// hàm build giao diện cho mobile
  final Widget Function(int index, O object) buildItemMobile;

  ///hàm build giao diện cho tablet
  ///là 1 list widget tương ứng với số cột
  final List<Widget> Function(int index, O object) buildItemTablet;

  ///sự kiện click item
  final Function(int index, O object)? onTapItem;

  ///sự kiện làm mới
  final Future<void> Function()? onRefresh;

  final ScrollController? controller;

  const CTable({
    Key? key,
    required this.listHeader,
    required this.initList,
    required this.buildItemMobile,
    required this.buildItemTablet,
    this.onRefresh,
    this.onTapItem,
    this.controller,
  }) : super(key: key);

  @override
  State<CTable<O>> createState() => _CTableState<O>();
}

class _CTableState<O> extends State<CTable<O>> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.initList is RxList) {
      return Obx(() => buildLayout());
    } else {
      return buildLayout();
    }
  }

  Widget buildLayout() {
    if (Constant.isTablet) {
      return Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                widget.listHeader.length,
                (index) => Expanded(
                  flex: widget.listHeader[index].flex,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kColorBlueGrey,
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: kColorBorder,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 7.sp,
                              horizontal: 4.sp,
                            ),
                            child: widget.listHeader[index].child ??
                                Text(
                                  widget.listHeader[index].title ?? '',
                                  textAlign: TextAlign.center,
                                  style: kStyleNormal.copyWith(color: Colors.white),
                                  overflow: TextOverflow.fade,
                                ),
                          ),
                        ),
                        const VerticalDivider(
                          width: 1,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: widget.onRefresh != null
                ? RefreshIndicator(
                    edgeOffset: -context.mediaQueryPadding.top,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      controller: widget.controller,
                      child: listTablet(),
                    ),
                    onRefresh: () async => await widget.onRefresh?.call(),
                  )
                : listTablet(),
          ),
        ],
      );
    } else {
      if (widget.onRefresh != null) {
        return RefreshIndicator(
          color: kColorPrimary,
          edgeOffset: context.mediaQueryPadding.top / -2,
          child: listMobile(),
          onRefresh: () async => await widget.onRefresh?.call(),
        );
      } else {
        return listMobile();
      }
    }
  }

  Widget listMobile() => ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: widget.controller,
        shrinkWrap: true,
        itemCount: widget.initList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => widget.onTapItem?.call(index, widget.initList[index]),
          child: widget.buildItemMobile(index, widget.initList[index]),
        ),
      );

  Widget listTablet() {
    return Column(
      children: List.generate(
        widget.initList.length,
        (indexData) {
          final listWidget = widget.buildItemTablet(indexData, widget.initList[indexData]);
          assert(listWidget.length == widget.listHeader.length, 'Số cột trong bảng phải bằng số cột tiêu đề');

          return GestureDetector(
            onTap: () => widget.onTapItem?.call(indexData, widget.initList[indexData]),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  listWidget.length,
                  (index) => Expanded(
                    flex: widget.listHeader[index].flex,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            width: indexData < widget.listHeader.length ? 1 : 0,
                            color: kColorBorder,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (index == 0)
                            VerticalDivider(
                              width: 1,
                              color: kColorBorder,
                            ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 5.sp,
                                horizontal: 4.sp,
                              ),
                              child: listWidget[index],
                            ),
                          ),
                          VerticalDivider(
                            width: 1,
                            color: kColorBorder,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CTableHeader {
  final String? title;
  final Widget? child;
  final int flex;

  CTableHeader({
    this.title,
    this.child,
    this.flex = 1,
  });
}
