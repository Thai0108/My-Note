import '../../base/base.dart';

class CBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.close();

    Path path_1 = Path();
    path_1.moveTo(size.width * -0.07916667, size.height * -0.08308824);
    path_1.moveTo(size.width * -0.4388889, size.height * -0.08308824);
    path_1.arcToPoint(Offset(size.width * 0.2805556, size.height * -0.08308824),
        radius: Radius.elliptical(size.width * 0.3597222, size.height * 0.1904412),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_1.arcToPoint(Offset(size.width * -0.4388889, size.height * -0.08308824),
        radius: Radius.elliptical(size.width * 0.3597222, size.height * 0.1904412),
        rotation: 0,
        largeArc: true,
        clockwise: true);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002777778;
    paint1Stroke.color = kColorPrimary.withOpacity(.15);
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.transparent;
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.1750000, size.height * 0.05294118);
    path_2.moveTo(size.width * 0.1555556, size.height * 0.05294118);
    path_2.arcToPoint(Offset(size.width * 0.1944444, size.height * 0.05294118),
        radius: Radius.elliptical(size.width * 0.01944444, size.height * 0.01029412),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_2.arcToPoint(Offset(size.width * 0.1555556, size.height * 0.05294118),
        radius: Radius.elliptical(size.width * 0.01944444, size.height * 0.01029412),
        rotation: 0,
        largeArc: true,
        clockwise: true);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = kColorPrimary.withOpacity(.15);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * -0.1486111, size.height * -0.07426471);
    path_3.moveTo(size.width * -0.5083333, size.height * -0.07426471);
    path_3.arcToPoint(Offset(size.width * 0.2111111, size.height * -0.07426471),
        radius: Radius.elliptical(size.width * 0.3597222, size.height * 0.1904412),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_3.arcToPoint(Offset(size.width * -0.5083333, size.height * -0.07426471),
        radius: Radius.elliptical(size.width * 0.3597222, size.height * 0.1904412),
        rotation: 0,
        largeArc: true,
        clockwise: true);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = kColorPrimary.withOpacity(.15);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 1.004167, size.height * -0.1404412);
    path_4.moveTo(size.width * 1.363889, size.height * -0.1404412);
    path_4.arcToPoint(Offset(size.width * 0.6444444, size.height * -0.1404412),
        radius: Radius.elliptical(size.width * 0.3597222, size.height * 0.1904412),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_4.arcToPoint(Offset(size.width * 1.363889, size.height * -0.1404412),
        radius: Radius.elliptical(size.width * 0.3597222, size.height * 0.1904412),
        rotation: 0,
        largeArc: true,
        clockwise: false);

    Paint paint4Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002777778;
    paint4Stroke.color = kColorPrimary.withOpacity(.15);
    canvas.drawPath(path_4, paint4Stroke);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = Colors.transparent;
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 1.101389, size.height * -0.1345588);
    path_5.moveTo(size.width * 1.461111, size.height * -0.1345588);
    path_5.arcToPoint(Offset(size.width * 0.7416667, size.height * -0.1345588),
        radius: Radius.elliptical(size.width * 0.3597222, size.height * 0.1904412),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_5.arcToPoint(Offset(size.width * 1.461111, size.height * -0.1345588),
        radius: Radius.elliptical(size.width * 0.3597222, size.height * 0.1904412),
        rotation: 0,
        largeArc: true,
        clockwise: false);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = kColorPrimary.withOpacity(.15);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
