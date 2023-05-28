import 'package:not_a_note/base/base.dart';

class RowProgressItem extends StatelessWidget {
  final String title;
  final int value;
  final double plan;
  final double real;
  final double remain;
  final Color color;
  const RowProgressItem({
    super.key,
    this.title = "",
    this.value = 0,
    this.plan = 0.0,
    this.real = 0.0,
    this.remain = 0.0,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.fs,
                ),
              ),
            ),
            Text(
              "${plan < real ? 100 : value > 100 ? 100 : value}%",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.fs,
              ),
            )
          ],
        ),
        SizedBox(
          height: .02.w,
        ),
        ProgressWidget(
          value: plan < real ? 100 : value,
          total: 100,
          color: color,
        ),
        SizedBox(
          height: .02.w,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kế hoạch",
                    style: TextStyle(fontSize: 13.fs),
                  ),
                  SizedBox(
                    height: .02.w,
                  ),
                  Text(
                    plan.toString().length > 4 ? plan.toStringAsFixed(4) : plan.toString(),
                    style: TextStyle(
                      fontSize: 13.fs,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Thực hiện",
                    style: TextStyle(fontSize: 13.fs),
                  ),
                  SizedBox(
                    height: .02.w,
                  ),
                  Text(
                    real.toString().length > 4 ? real.toStringAsFixed(4) : real.toString(),
                    style: TextStyle(
                      fontSize: 13.fs,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Còn lại",
                    style: TextStyle(fontSize: 13.fs),
                  ),
                  SizedBox(
                    height: .02.w,
                  ),
                  Text(
                    plan < real
                        ? "0"
                        : remain.toString().length > 4
                            ? remain.toStringAsFixed(4)
                            : remain.toString(),
                    style: TextStyle(
                      fontSize: 13.fs,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class ProgressWidget extends StatelessWidget {
  ProgressWidget({
    super.key,
    this.value = 0,
    this.total = 0,
    this.color,
  });
  int value;
  int total;
  Color? color;

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey();
    var height = .012.w;
    if (value > total) value = total;

    return Container(
      key: key,
      height: height,
      width: double.infinity,
      color: kColorGrey.withOpacity(1),
      child: Row(
        children: [
          FutureBuilder<Size?>(
              future: Future.delayed(Duration.zero, () async {
                var renderBox = key.currentContext?.findRenderObject() as RenderBox?;
                return renderBox?.size;
              }),
              builder: (_, snapshot) {
                // var length = key.currentContext?.findRenderObject() as RenderBox?;

                if (snapshot.data == null || total == 0 || value == 0) return const SizedBox();

                double? width = snapshot.data!.width / total * value;

                return Container(
                  height: height,
                  width: width,
                  constraints: BoxConstraints(
                    maxWidth: width,
                  ),
                  color: color ?? kColorPrimary,
                );
              }),
        ],
      ),
    );
  }
}
