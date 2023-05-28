import 'package:not_a_note/base/base.dart';

class LinesCardWidget extends StatefulWidget {
  final String title;
  final String? content;
  final List<String>? lDate;
  final bool hasBackground;
  final bool isEnd;
  final double? minHeight;
  final void Function()? onTap;

  const LinesCardWidget({
    super.key,
    required this.title,
    this.content,
    this.lDate,
    this.hasBackground = false,
    this.isEnd = false,
    this.minHeight,
    this.onTap,
  });

  @override
  State<LinesCardWidget> createState() => _LinesCardWidgetState();
}

class _LinesCardWidgetState extends State<LinesCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: widget.minHeight ?? 0),
      decoration: BoxDecoration(
        color: widget.hasBackground ? kColorGrey.withOpacity(.15) : Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(widget.isEnd ? 5 : 0),
          bottomRight: Radius.circular(widget.isEnd ? 5 : 0),
        ),
      ),
      child: Row(
        children: [
          if (!widget.isEnd) ...[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: .03.w),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: widget.content != null
                  ? Text(
                      widget.content ?? "N/A",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Row(
                      children: List.generate(
                        7,
                        (index) {
                          var date = index < 6 ? "T${index + 2}" : "CN";
                          var hasDate = widget.lDate?.contains(date) ?? false;
                          return Container(
                            height: .065.w,
                            width: .065.w,
                            margin: EdgeInsets.symmetric(
                              vertical: .01.w,
                              horizontal: .005.w,
                            ),
                            decoration: BoxDecoration(
                              color: hasDate ? kColorSecondary : kColorGrey,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                date,
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ] else ...[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 8,
                ),
                child: InkWell(
                  onTap: widget.onTap,
                  child: Text(
                    kLanguage.details,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: kColorPrimary,
                    ),
                  ),
                ),
              ),
            )
          ]
        ],
      ),
    );
    ;
  }
}
