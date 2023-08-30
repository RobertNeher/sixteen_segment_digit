import 'package:flutter/material.dart';

class DigitPainter extends CustomPainter {
  String symbol;
  Color foreground;
  Color background;

  DigitPainter({
    this.symbol = ' ',
    this.foreground = Colors.red,
    this.background = Colors.yellowAccent,
  }) {
    foreground = foreground.withOpacity(opacity);
    background = background.withOpacity(opacity);
  }

  static const double opacity = 0.5;
  static const String segmentIndex = 'abhkmnacupgtsrdfe.';
  static const Map<String, String> segmentMap = {
    //    012345678901234567
    //    abhkmnacupgtsrdfe.
    ' ': '11111100000000001',
  };

  bool _segmentOnOff(int index) {
    String segmentPattern = segmentMap[symbol]!;
    for (int i = 0; i < segmentPattern.length; i++) {
      if ((i == index) && segmentPattern[i] == '1') {
        return true;
      }
    }
    return false;
  }

  @override
  void paint(Canvas canvas, Size _size) {
    const double offset_x = -120;
    const double offset_y = 30;

    String segment = '';
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;

    Path path = Path();

    segment = 'a';
    if (segmentIndex.indexOf(segment) == 0) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(0 + offset_x, 10 + offset_y);
      path.relativeLineTo(20, -20);
      path.relativeLineTo(155, 0);
      path.relativeLineTo(-5, 55);
      path.relativeLineTo(-140, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'b';
    if (segmentIndex.indexOf(segment) == 1) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(190 + offset_x, -10 + offset_y);
      path.relativeLineTo(120, 0);
      path.relativeLineTo(15, 15);
      path.relativeLineTo(-40, 40);
      path.relativeLineTo(-105, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'h';
    if (segmentIndex.indexOf(segment) == 2) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(-25 + offset_x, 35 + offset_y);
      path.relativeLineTo(20, -17);
      path.relativeLineTo(30, 30);
      path.relativeLineTo(-30, 180);
      path.relativeLineTo(-40, 35);
      path.relativeLineTo(-20, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'k';
    if (segmentIndex.indexOf(segment) == 3) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(25 + offset_x, 100 + offset_y);
      path.relativeLineTo(10, -42);
      path.relativeLineTo(13, 0);
      path.relativeLineTo(60, 130);
      path.relativeLineTo(0, 55);
      path.relativeLineTo(-7, 0);
      path.relativeLineTo(-20, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'm';
    if (segmentIndex.indexOf(segment) == 4) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(145 + offset_x, 55 + offset_y);
      path.relativeLineTo(30, 0);
      path.relativeLineTo(25, 0);
      path.relativeLineTo(-20, 125);
      path.relativeLineTo(-35, 60);
      path.relativeLineTo(-25, 0);
      path.relativeLineTo(0, -30);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'n';
    if (segmentIndex.indexOf(segment) == 5) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(265 + offset_x, 55 + offset_y);
      path.relativeLineTo(10, 0);
      path.relativeLineTo(-13, 80);
      path.relativeLineTo(-70, 105);
      path.relativeLineTo(-20, 0);
      path.relativeLineTo(10, -50);
      path.close();
      canvas.drawPath(path, paint);
    }
    segment = '.';
    if (segmentIndex.indexOf(segment) == 17) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      print(_size);
      path.addOval(Rect.fromCircle(
          center: Offset(320 + offset_x, 525 + offset_y), radius: 35));
      canvas.drawPath(path, paint);
    }

    """
    segment = 'u';
    if (segmentIndex.indexOf(segment) == 7) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path.moveTo(size.width * 0.59, size.height * 1.27);
      path.cubicTo(size.width * 0.54, size.height * 1.24, size.width * 0.49,
          size.height * 1.22, size.width * 0.49, size.height * 1.22);
      path.cubicTo(size.width * 0.49, size.height * 1.21, size.width * 0.54,
          size.height * 1.19, size.width * 0.59, size.height * 1.16);
      path.cubicTo(size.width * 0.59, size.height * 1.16, size.width * 0.7,
          size.height * 1.1, size.width * 0.7, size.height * 1.1);
      path.cubicTo(size.width * 0.7, size.height * 1.1, size.width * 1.04,
          size.height * 1.11, size.width * 1.04, size.height * 1.11);
      path.cubicTo(size.width * 1.04, size.height * 1.11, size.width * 1.38,
          size.height * 1.11, size.width * 1.38, size.height * 1.11);
      path.cubicTo(size.width * 1.38, size.height * 1.11, size.width * 1.4,
          size.height * 1.21, size.width * 1.4, size.height * 1.21);
      path.cubicTo(size.width * 1.42, size.height * 1.26, size.width * 1.43,
          size.height * 1.31, size.width * 1.43, size.height * 1.32);
      path.cubicTo(size.width * 1.43, size.height * 1.32, size.width * 1.43,
          size.height * 1.33, size.width * 1.43, size.height * 1.33);
      path.cubicTo(size.width * 1.43, size.height * 1.33, size.width * 1.06,
          size.height * 1.33, size.width * 1.06, size.height * 1.33);
      path.cubicTo(size.width * 1.06, size.height * 1.33, size.width * 0.7,
          size.height * 1.33, size.width * 0.7, size.height * 1.33);
      path.cubicTo(size.width * 0.7, size.height * 1.33, size.width * 0.59,
          size.height * 1.27, size.width * 0.59, size.height * 1.27);
      path.cubicTo(size.width * 0.59, size.height * 1.27, size.width * 0.59,
          size.height * 1.27, size.width * 0.59, size.height * 1.27);
      path.lineTo(size.width * 1.42, size.height * 1.32);
      path.cubicTo(size.width * 1.42, size.height * 1.31, size.width * 1.38,
          size.height * 1.14, size.width * 1.37, size.height * 1.12);
      path.cubicTo(size.width * 1.37, size.height * 1.12, size.width * 1.37,
          size.height * 1.11, size.width * 1.37, size.height * 1.11);
      path.cubicTo(size.width * 1.37, size.height * 1.11, size.width * 1.03,
          size.height * 1.11, size.width * 1.03, size.height * 1.11);
      path.cubicTo(size.width * 1.03, size.height * 1.11, size.width * 0.7,
          size.height * 1.11, size.width * 0.7, size.height * 1.11);
      path.cubicTo(size.width * 0.7, size.height * 1.11, size.width * 0.6,
          size.height * 1.16, size.width * 0.6, size.height * 1.16);
      path.cubicTo(size.width * 0.6, size.height * 1.16, size.width / 2,
          size.height * 1.22, size.width / 2, size.height * 1.22);
      path.cubicTo(size.width / 2, size.height * 1.22, size.width * 0.59,
          size.height * 1.26, size.width * 0.59, size.height * 1.26);
      path.cubicTo(size.width * 0.64, size.height * 1.29, size.width * 0.68,
          size.height * 1.31, size.width * 0.69, size.height * 1.32);
      path.cubicTo(size.width * 0.7, size.height * 1.32, size.width * 0.72,
          size.height * 1.32, size.width * 1.06, size.height * 1.32);
      path.cubicTo(size.width * 1.4, size.height * 1.32, size.width * 1.42,
          size.height * 1.32, size.width * 1.42, size.height * 1.32);
      path.cubicTo(size.width * 1.42, size.height * 1.32, size.width * 1.42,
          size.height * 1.32, size.width * 1.42, size.height * 1.32);
      canvas.drawPath(path, paint);
    }

    segment = 'p';
    if (segmentIndex.indexOf(segment) == 8) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path.moveTo(size.width * 1.49, size.height * 1.33);
      path.cubicTo(size.width * 1.49, size.height * 1.32, size.width * 1.47,
          size.height * 1.28, size.width * 1.46, size.height * 1.22);
      path.cubicTo(size.width * 1.45, size.height * 1.17, size.width * 1.44,
          size.height * 1.12, size.width * 1.43, size.height * 1.11);
      path.cubicTo(size.width * 1.43, size.height * 1.11, size.width * 1.43,
          size.height * 1.1, size.width * 1.43, size.height * 1.1);
      path.cubicTo(size.width * 1.43, size.height * 1.1, size.width * 1.78,
          size.height * 1.1, size.width * 1.78, size.height * 1.1);
      path.cubicTo(size.width * 1.78, size.height * 1.1, size.width * 2.13,
          size.height * 1.1, size.width * 2.13, size.height * 1.1);
      path.cubicTo(size.width * 2.13, size.height * 1.1, size.width * 2.23,
          size.height * 1.16, size.width * 2.23, size.height * 1.16);
      path.cubicTo(size.width * 2.29, size.height * 1.19, size.width * 2.34,
          size.height * 1.21, size.width * 2.34, size.height * 1.22);
      path.cubicTo(size.width * 2.34, size.height * 1.22, size.width * 2.29,
          size.height * 1.24, size.width * 2.23, size.height * 1.27);
      path.cubicTo(size.width * 2.23, size.height * 1.27, size.width * 2.13,
          size.height * 1.33, size.width * 2.13, size.height * 1.33);
      path.cubicTo(size.width * 2.13, size.height * 1.33, size.width * 1.81,
          size.height * 1.33, size.width * 1.81, size.height * 1.33);
      path.cubicTo(size.width * 1.61, size.height * 1.33, size.width * 1.49,
          size.height * 1.33, size.width * 1.49, size.height * 1.33);
      path.cubicTo(size.width * 1.49, size.height * 1.33, size.width * 1.49,
          size.height * 1.33, size.width * 1.49, size.height * 1.33);
      path.lineTo(size.width * 2.23, size.height * 1.27);
      path.cubicTo(size.width * 2.28, size.height * 1.24, size.width * 2.33,
          size.height * 1.22, size.width * 2.32, size.height * 1.22);
      path.cubicTo(size.width * 2.32, size.height * 1.21, size.width * 2.28,
          size.height * 1.19, size.width * 2.23, size.height * 1.16);
      path.cubicTo(size.width * 2.23, size.height * 1.16, size.width * 2.13,
          size.height * 1.11, size.width * 2.13, size.height * 1.11);
      path.cubicTo(size.width * 2.13, size.height * 1.11, size.width * 1.78,
          size.height * 1.11, size.width * 1.78, size.height * 1.11);
      path.cubicTo(size.width * 1.78, size.height * 1.11, size.width * 1.44,
          size.height * 1.11, size.width * 1.44, size.height * 1.11);
      path.cubicTo(size.width * 1.44, size.height * 1.11, size.width * 1.44,
          size.height * 1.12, size.width * 1.44, size.height * 1.12);
      path.cubicTo(size.width * 1.44, size.height * 1.12, size.width * 1.46,
          size.height * 1.17, size.width * 1.47, size.height * 1.22);
      path.cubicTo(size.width * 1.48, size.height * 1.27, size.width * 1.49,
          size.height * 1.32, size.width * 1.49, size.height * 1.32);
      path.cubicTo(size.width * 1.49, size.height * 1.32, size.width * 1.56,
          size.height * 1.32, size.width * 1.81, size.height * 1.32);
      path.cubicTo(size.width * 1.81, size.height * 1.32, size.width * 2.13,
          size.height * 1.32, size.width * 2.13, size.height * 1.32);
      path.cubicTo(size.width * 2.13, size.height * 1.32, size.width * 2.23,
          size.height * 1.27, size.width * 2.23, size.height * 1.27);
      path.cubicTo(size.width * 2.23, size.height * 1.27, size.width * 2.23,
          size.height * 1.27, size.width * 2.23, size.height * 1.27);
      canvas.drawPath(path, paint);
    }

    segment = 'g';
    if (segmentIndex.indexOf(segment) == 9) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path.moveTo(size.width * 0.35, size.height * 1.16);
      path.cubicTo(size.width * 0.35, size.height * 1.16, size.width * 0.3,
          size.height * 0.96, size.width * 0.24, size.height * 0.71);
      path.cubicTo(size.width * 0.18, size.height * 0.46, size.width * 0.12,
          size.height / 4, size.width * 0.12, size.height * 0.24);
      path.cubicTo(size.width * 0.12, size.height * 0.23, size.width * 0.12,
          size.height * 0.23, size.width * 0.16, size.height / 5);
      path.cubicTo(size.width * 0.16, size.height / 5, size.width / 5,
          size.height * 0.17, size.width / 5, size.height * 0.17);
      path.cubicTo(size.width / 5, size.height * 0.17, size.width * 0.32,
          size.height * 0.24, size.width * 0.32, size.height * 0.24);
      path.cubicTo(size.width * 0.39, size.height * 0.28, size.width * 0.44,
          size.height * 0.32, size.width * 0.45, size.height * 0.32);
      path.cubicTo(size.width * 0.45, size.height * 0.32, size.width * 0.63,
          size.height * 1.06, size.width * 0.63, size.height * 1.08);
      path.cubicTo(size.width * 0.63, size.height * 1.09, size.width * 0.61,
          size.height * 1.1, size.width * 0.56, size.height * 1.13);
      path.cubicTo(size.width * 0.56, size.height * 1.13, size.width * 0.48,
          size.height * 1.17, size.width * 0.48, size.height * 1.17);
      path.cubicTo(size.width * 0.48, size.height * 1.17, size.width * 0.41,
          size.height * 1.17, size.width * 0.41, size.height * 1.17);
      path.cubicTo(size.width * 0.37, size.height * 1.17, size.width * 0.35,
          size.height * 1.17, size.width * 0.35, size.height * 1.16);
      path.cubicTo(size.width * 0.35, size.height * 1.16, size.width * 0.35,
          size.height * 1.16, size.width * 0.35, size.height * 1.16);
      path.lineTo(size.width * 0.55, size.height * 1.12);
      path.cubicTo(size.width * 0.62, size.height * 1.09, size.width * 0.63,
          size.height * 1.09, size.width * 0.62, size.height * 1.08);
      path.cubicTo(size.width * 0.62, size.height * 1.05, size.width * 0.44,
          size.height / 3, size.width * 0.44, size.height * 0.32);
      path.cubicTo(size.width * 0.44, size.height * 0.32, size.width * 0.39,
          size.height * 0.29, size.width * 0.32, size.height / 4);
      path.cubicTo(size.width * 0.32, size.height / 4, size.width / 5,
          size.height * 0.18, size.width / 5, size.height * 0.18);
      path.cubicTo(size.width / 5, size.height * 0.18, size.width * 0.17,
          size.height / 5, size.width * 0.17, size.height / 5);
      path.cubicTo(size.width * 0.15, size.height * 0.22, size.width * 0.13,
          size.height * 0.23, size.width * 0.13, size.height * 0.23);
      path.cubicTo(size.width * 0.13, size.height * 0.24, size.width * 0.34,
          size.height * 1.13, size.width * 0.35, size.height * 1.15);
      path.cubicTo(size.width * 0.35, size.height * 1.15, size.width * 0.35,
          size.height * 1.16, size.width * 0.35, size.height * 1.16);
      path.cubicTo(size.width * 0.35, size.height * 1.16, size.width * 0.42,
          size.height * 1.16, size.width * 0.42, size.height * 1.16);
      path.cubicTo(size.width * 0.42, size.height * 1.16, size.width * 0.48,
          size.height * 1.16, size.width * 0.48, size.height * 1.16);
      path.cubicTo(size.width * 0.48, size.height * 1.16, size.width * 0.55,
          size.height * 1.12, size.width * 0.55, size.height * 1.12);
      path.cubicTo(size.width * 0.55, size.height * 1.12, size.width * 0.55,
          size.height * 1.12, size.width * 0.55, size.height * 1.12);
      canvas.drawPath(path, paint);
    }

    segment = 't';
    if (segmentIndex.indexOf(segment) == 11) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path.moveTo(size.width * 2.19, size.height * 1.09);
      path.cubicTo(size.width * 2.12, size.height * 1.05, size.width * 2.06,
          size.height * 1.02, size.width * 2.06, size.height * 1.02);
      path.cubicTo(size.width * 2.06, size.height * 1.02, size.width * 2.02,
          size.height * 0.86, size.width * 1.98, size.height * 0.67);
      path.cubicTo(size.width * 1.98, size.height * 0.67, size.width * 1.89,
          size.height * 0.32, size.width * 1.89, size.height * 0.32);
      path.cubicTo(size.width * 1.89, size.height * 0.32, size.width * 1.95,
          size.height * 0.27, size.width * 1.95, size.height * 0.27);
      path.cubicTo(size.width * 1.98, size.height * 0.24, size.width * 2.02,
          size.height / 5, size.width * 2.03, size.height * 0.19);
      path.cubicTo(size.width * 2.03, size.height * 0.19, size.width * 2.06,
          size.height * 0.17, size.width * 2.06, size.height * 0.17);
      path.cubicTo(size.width * 2.06, size.height * 0.17, size.width * 2.12,
          size.height * 0.22, size.width * 2.12, size.height * 0.22);
      path.cubicTo(size.width * 2.12, size.height * 0.22, size.width * 2.19,
          size.height * 0.26, size.width * 2.19, size.height * 0.26);
      path.cubicTo(size.width * 2.19, size.height * 0.26, size.width * 2.29,
          size.height * 0.7, size.width * 2.29, size.height * 0.7);
      path.cubicTo(size.width * 2.35, size.height * 0.94, size.width * 2.4,
          size.height * 1.14, size.width * 2.4, size.height * 1.14);
      path.cubicTo(size.width * 2.4, size.height * 1.14, size.width * 2.4,
          size.height * 1.15, size.width * 2.4, size.height * 1.15);
      path.cubicTo(size.width * 2.4, size.height * 1.15, size.width * 2.35,
          size.height * 1.15, size.width * 2.35, size.height * 1.15);
      path.cubicTo(size.width * 2.35, size.height * 1.15, size.width * 2.31,
          size.height * 1.15, size.width * 2.31, size.height * 1.15);
      path.cubicTo(size.width * 2.31, size.height * 1.15, size.width * 2.19,
          size.height * 1.09, size.width * 2.19, size.height * 1.09);
      path.cubicTo(size.width * 2.19, size.height * 1.09, size.width * 2.19,
          size.height * 1.09, size.width * 2.19, size.height * 1.09);
      path.lineTo(size.width * 2.39, size.height * 1.14);
      path.cubicTo(size.width * 2.39, size.height * 1.14, size.width * 2.34,
          size.height * 0.94, size.width * 2.28, size.height * 0.7);
      path.cubicTo(size.width * 2.28, size.height * 0.7, size.width * 2.18,
          size.height * 0.26, size.width * 2.18, size.height * 0.26);
      path.cubicTo(size.width * 2.18, size.height * 0.26, size.width * 2.12,
          size.height * 0.22, size.width * 2.12, size.height * 0.22);
      path.cubicTo(size.width * 2.09, size.height / 5, size.width * 2.06,
          size.height * 0.18, size.width * 2.06, size.height * 0.18);
      path.cubicTo(size.width * 2.06, size.height * 0.18, size.width * 2.02,
          size.height / 5, size.width * 1.98, size.height / 4);
      path.cubicTo(size.width * 1.91, size.height * 0.31, size.width * 1.9,
          size.height * 0.32, size.width * 1.9, size.height / 3);
      path.cubicTo(size.width * 1.9, size.height / 3, size.width * 1.94,
          size.height * 0.49, size.width * 1.98, size.height * 0.67);
      path.cubicTo(size.width * 2.04, size.height * 0.92, size.width * 2.07,
          size.height * 1.02, size.width * 2.07, size.height * 1.02);
      path.cubicTo(size.width * 2.08, size.height * 1.02, size.width * 2.13,
          size.height * 1.05, size.width * 2.2, size.height * 1.09);
      path.cubicTo(size.width * 2.2, size.height * 1.09, size.width * 2.31,
          size.height * 1.15, size.width * 2.31, size.height * 1.15);
      path.cubicTo(size.width * 2.31, size.height * 1.15, size.width * 2.35,
          size.height * 1.15, size.width * 2.35, size.height * 1.15);
      path.cubicTo(size.width * 2.39, size.height * 1.15, size.width * 2.39,
          size.height * 1.15, size.width * 2.39, size.height * 1.14);
      path.cubicTo(size.width * 2.39, size.height * 1.14, size.width * 2.39,
          size.height * 1.14, size.width * 2.39, size.height * 1.14);
      canvas.drawPath(path, paint);
    }

    segment = 's';
    if (segmentIndex.indexOf(segment) > 0) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path.moveTo(size.width * 1.05, size.height * 1.05);
      path.cubicTo(size.width * 1.03, size.height * 1.03, size.width * 0.92,
          size.height * 0.92, size.width * 0.81, size.height * 0.81);
      path.cubicTo(size.width * 0.63, size.height * 0.63, size.width * 0.6,
          size.height * 0.59, size.width * 0.59, size.height * 0.58);
      path.cubicTo(size.width * 0.58, size.height * 0.53, size.width * 0.52,
          size.height / 3, size.width * 0.52, size.height / 3);
      path.cubicTo(size.width * 0.52, size.height * 0.32, size.width * 0.54,
          size.height * 0.32, size.width * 0.58, size.height * 0.32);
      path.cubicTo(size.width * 0.58, size.height * 0.32, size.width * 0.64,
          size.height * 0.32, size.width * 0.64, size.height * 0.32);
      path.cubicTo(size.width * 0.64, size.height * 0.32, size.width * 0.9,
          size.height * 0.58, size.width * 0.9, size.height * 0.58);
      path.cubicTo(size.width * 1.04, size.height * 0.72, size.width * 1.16,
          size.height * 0.84, size.width * 1.16, size.height * 0.85);
      path.cubicTo(size.width * 1.16, size.height * 0.85, size.width * 1.18,
          size.height * 0.9, size.width * 1.2, size.height * 0.96);
      path.cubicTo(size.width * 1.22, size.height * 1.02, size.width * 1.24,
          size.height * 1.07, size.width * 1.24, size.height * 1.07);
      path.cubicTo(size.width * 1.24, size.height * 1.08, size.width * 1.24,
          size.height * 1.08, size.width * 1.16, size.height * 1.08);
      path.cubicTo(size.width * 1.16, size.height * 1.08, size.width * 1.08,
          size.height * 1.08, size.width * 1.08, size.height * 1.08);
      path.cubicTo(size.width * 1.08, size.height * 1.08, size.width * 1.05,
          size.height * 1.05, size.width * 1.05, size.height * 1.05);
      path.cubicTo(size.width * 1.05, size.height * 1.05, size.width * 1.05,
          size.height * 1.05, size.width * 1.05, size.height * 1.05);
      path.lineTo(size.width * 1.19, size.height * 0.96);
      path.cubicTo(size.width * 1.19, size.height * 0.96, size.width * 1.16,
          size.height * 0.85, size.width * 1.16, size.height * 0.85);
      path.cubicTo(size.width * 1.16, size.height * 0.85, size.width * 0.9,
          size.height * 0.59, size.width * 0.9, size.height * 0.59);
      path.cubicTo(size.width * 0.9, size.height * 0.59, size.width * 0.64,
          size.height / 3, size.width * 0.64, size.height / 3);
      path.cubicTo(size.width * 0.64, size.height / 3, size.width * 0.58,
          size.height / 3, size.width * 0.58, size.height / 3);
      path.cubicTo(size.width * 0.55, size.height / 3, size.width * 0.53,
          size.height / 3, size.width * 0.53, size.height / 3);
      path.cubicTo(size.width * 0.53, size.height / 3, size.width * 0.54,
          size.height * 0.39, size.width * 0.57, size.height * 0.46);
      path.cubicTo(size.width * 0.57, size.height * 0.46, size.width * 0.6,
          size.height * 0.59, size.width * 0.6, size.height * 0.59);
      path.cubicTo(size.width * 0.6, size.height * 0.59, size.width * 0.84,
          size.height * 0.83, size.width * 0.84, size.height * 0.83);
      path.cubicTo(size.width * 0.84, size.height * 0.83, size.width * 1.08,
          size.height * 1.07, size.width * 1.08, size.height * 1.07);
      path.cubicTo(size.width * 1.08, size.height * 1.07, size.width * 1.15,
          size.height * 1.07, size.width * 1.15, size.height * 1.07);
      path.cubicTo(size.width * 1.15, size.height * 1.07, size.width * 1.23,
          size.height * 1.07, size.width * 1.23, size.height * 1.07);
      path.cubicTo(size.width * 1.23, size.height * 1.07, size.width * 1.19,
          size.height * 0.96, size.width * 1.19, size.height * 0.96);
      path.cubicTo(size.width * 1.19, size.height * 0.96, size.width * 1.19,
          size.height * 0.96, size.width * 1.19, size.height * 0.96);
      canvas.drawPath(path, paint);
    }

    segment = 'd';
    if (segmentIndex.indexOf(segment) > 0) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path.lineTo(size.width * 1.37, size.height * 1.07);
      path.cubicTo(size.width * 1.36, size.height * 1.06, size.width * 1.33,
          size.height, size.width * 1.3, size.height * 0.95);
      path.cubicTo(size.width * 1.3, size.height * 0.95, size.width * 1.24,
          size.height * 0.85, size.width * 1.24, size.height * 0.85);
      path.cubicTo(size.width * 1.24, size.height * 0.85, size.width * 1.17,
          size.height * 0.59, size.width * 1.17, size.height * 0.59);
      path.cubicTo(size.width * 1.14, size.height * 0.45, size.width * 1.11,
          size.height / 3, size.width * 1.11, size.height / 3);
      path.cubicTo(size.width * 1.11, size.height * 0.32, size.width * 1.18,
          size.height * 0.32, size.width * 1.26, size.height * 0.32);
      path.cubicTo(size.width * 1.38, size.height * 0.32, size.width * 1.41,
          size.height * 0.32, size.width * 1.42, size.height / 3);
      path.cubicTo(size.width * 1.42, size.height / 3, size.width * 1.45,
          size.height * 0.44, size.width * 1.48, size.height * 0.58);
      path.cubicTo(size.width * 1.48, size.height * 0.58, size.width * 1.54,
          size.height * 0.83, size.width * 1.54, size.height * 0.83);
      path.cubicTo(size.width * 1.54, size.height * 0.83, size.width * 1.52,
          size.height * 0.95, size.width * 1.52, size.height * 0.95);
      path.cubicTo(size.width * 1.5, size.height, size.width * 1.49,
          size.height * 1.07, size.width * 1.49, size.height * 1.07);
      path.cubicTo(size.width * 1.49, size.height * 1.08, size.width * 1.48,
          size.height * 1.08, size.width * 1.43, size.height * 1.08);
      path.cubicTo(size.width * 1.43, size.height * 1.08, size.width * 1.37,
          size.height * 1.08, size.width * 1.37, size.height * 1.08);
      path.cubicTo(size.width * 1.37, size.height * 1.08, size.width * 1.37,
          size.height * 1.07, size.width * 1.37, size.height * 1.07);
      path.cubicTo(size.width * 1.37, size.height * 1.07, size.width * 1.37,
          size.height * 1.07, size.width * 1.37, size.height * 1.07);
      path.lineTo(size.width * 1.49, size.height * 1.06);
      path.cubicTo(size.width * 1.49, size.height * 1.06, size.width * 1.5,
          size.height, size.width * 1.51, size.height * 0.94);
      path.cubicTo(size.width * 1.51, size.height * 0.94, size.width * 1.53,
          size.height * 0.83, size.width * 1.53, size.height * 0.83);
      path.cubicTo(size.width * 1.53, size.height * 0.83, size.width * 1.47,
          size.height * 0.58, size.width * 1.47, size.height * 0.58);
      path.cubicTo(size.width * 1.44, size.height * 0.44, size.width * 1.41,
          size.height / 3, size.width * 1.41, size.height / 3);
      path.cubicTo(size.width * 1.41, size.height / 3, size.width * 1.35,
          size.height / 3, size.width * 1.27, size.height / 3);
      path.cubicTo(size.width * 1.17, size.height / 3, size.width * 1.12,
          size.height / 3, size.width * 1.12, size.height / 3);
      path.cubicTo(size.width * 1.12, size.height / 3, size.width * 1.15,
          size.height * 0.45, size.width * 1.18, size.height * 0.59);
      path.cubicTo(size.width * 1.18, size.height * 0.59, size.width * 1.25,
          size.height * 0.85, size.width * 1.25, size.height * 0.85);
      path.cubicTo(size.width * 1.25, size.height * 0.85, size.width * 1.31,
          size.height * 0.95, size.width * 1.31, size.height * 0.95);
      path.cubicTo(size.width * 1.34, size.height, size.width * 1.37,
          size.height * 1.06, size.width * 1.37, size.height * 1.06);
      path.cubicTo(size.width * 1.38, size.height * 1.07, size.width * 1.38,
          size.height * 1.07, size.width * 1.43, size.height * 1.07);
      path.cubicTo(size.width * 1.48, size.height * 1.07, size.width * 1.49,
          size.height * 1.07, size.width * 1.49, size.height * 1.06);
      path.cubicTo(size.width * 1.49, size.height * 1.06, size.width * 1.49,
          size.height * 1.06, size.width * 1.49, size.height * 1.06);
      canvas.drawPath(path, paint);
    }

    segment = 'f';
    if (segmentIndex.indexOf(segment) > 0) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path.lineTo(size.width * 1.56, size.height * 0.95);
      path.cubicTo(size.width * 1.56, size.height * 0.95, size.width * 1.56,
          size.height * 0.82, size.width * 1.56, size.height * 0.82);
      path.cubicTo(size.width * 1.56, size.height * 0.82, size.width * 1.67,
          size.height * 0.57, size.width * 1.67, size.height * 0.57);
      path.cubicTo(size.width * 1.72, size.height * 0.44, size.width * 1.77,
          size.height / 3, size.width * 1.77, size.height * 0.32);
      path.cubicTo(size.width * 1.78, size.height * 0.32, size.width * 1.84,
          size.height * 0.32, size.width * 1.84, size.height * 0.32);
      path.cubicTo(size.width * 1.84, size.height * 0.32, size.width * 1.86,
          size.height * 0.38, size.width * 1.88, size.height * 0.45);
      path.cubicTo(size.width * 1.88, size.height * 0.45, size.width * 1.92,
          size.height * 0.57, size.width * 1.92, size.height * 0.57);
      path.cubicTo(size.width * 1.92, size.height * 0.57, size.width * 1.81,
          size.height * 0.82, size.width * 1.81, size.height * 0.82);
      path.cubicTo(size.width * 1.81, size.height * 0.82, size.width * 1.71,
          size.height * 1.08, size.width * 1.71, size.height * 1.08);
      path.cubicTo(size.width * 1.71, size.height * 1.08, size.width * 1.63,
          size.height * 1.08, size.width * 1.63, size.height * 1.08);
      path.cubicTo(size.width * 1.63, size.height * 1.08, size.width * 1.56,
          size.height * 1.08, size.width * 1.56, size.height * 1.08);
      path.cubicTo(size.width * 1.56, size.height * 1.08, size.width * 1.56,
          size.height * 0.95, size.width * 1.56, size.height * 0.95);
      path.cubicTo(size.width * 1.56, size.height * 0.95, size.width * 1.56,
          size.height * 0.95, size.width * 1.56, size.height * 0.95);
      path.lineTo(size.width * 1.8, size.height * 0.82);
      path.cubicTo(size.width * 1.8, size.height * 0.82, size.width * 1.91,
          size.height * 0.57, size.width * 1.91, size.height * 0.57);
      path.cubicTo(size.width * 1.91, size.height * 0.57, size.width * 1.87,
          size.height * 0.45, size.width * 1.87, size.height * 0.45);
      path.cubicTo(size.width * 1.87, size.height * 0.45, size.width * 1.84,
          size.height / 3, size.width * 1.84, size.height / 3);
      path.cubicTo(size.width * 1.84, size.height / 3, size.width * 1.81,
          size.height / 3, size.width * 1.81, size.height / 3);
      path.cubicTo(size.width * 1.81, size.height / 3, size.width * 1.78,
          size.height / 3, size.width * 1.78, size.height / 3);
      path.cubicTo(size.width * 1.78, size.height / 3, size.width * 1.77,
          size.height * 0.34, size.width * 1.77, size.height * 0.34);
      path.cubicTo(size.width * 1.77, size.height * 0.34, size.width * 1.72,
          size.height * 0.45, size.width * 1.67, size.height * 0.58);
      path.cubicTo(size.width * 1.67, size.height * 0.58, size.width * 1.57,
          size.height * 0.82, size.width * 1.57, size.height * 0.82);
      path.cubicTo(size.width * 1.57, size.height * 0.82, size.width * 1.57,
          size.height * 0.94, size.width * 1.57, size.height * 0.94);
      path.cubicTo(size.width * 1.57, size.height * 0.94, size.width * 1.57,
          size.height * 1.07, size.width * 1.57, size.height * 1.07);
      path.cubicTo(size.width * 1.57, size.height * 1.07, size.width * 1.64,
          size.height * 1.07, size.width * 1.64, size.height * 1.07);
      path.cubicTo(size.width * 1.64, size.height * 1.07, size.width * 1.7,
          size.height * 1.07, size.width * 1.7, size.height * 1.07);
      path.cubicTo(size.width * 1.7, size.height * 1.07, size.width * 1.8,
          size.height * 0.82, size.width * 1.8, size.height * 0.82);
      path.cubicTo(size.width * 1.8, size.height * 0.82, size.width * 1.8,
          size.height * 0.82, size.width * 1.8, size.height * 0.82);
      canvas.drawPath(path, paint);
    }

    segment = 'e';
    if (segmentIndex.indexOf(segment) > 0) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      paint.color = _segmentOnOff(14) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 2.45, size.height * 0.34);
      path.cubicTo(size.width * 2.37, size.height / 3, size.width * 2.3,
          size.height * 0.27, size.width * 2.3, size.height / 5);
      path.cubicTo(size.width * 2.3, size.height * 0.12, size.width * 2.41,
          size.height * 0.06, size.width * 2.52, size.height * 0.07);
      path.cubicTo(size.width * 2.56, size.height * 0.08, size.width * 2.6,
          size.height * 0.09, size.width * 2.63, size.height * 0.11);
      path.cubicTo(size.width * 2.66, size.height * 0.13, size.width * 2.67,
          size.height * 0.16, size.width * 2.68, size.height * 0.18);
      path.cubicTo(size.width * 2.68, size.height * 0.18, size.width * 2.68,
          size.height / 5, size.width * 2.68, size.height / 5);
      path.cubicTo(size.width * 2.68, size.height / 5, size.width * 2.67,
          size.height * 0.18, size.width * 2.67, size.height * 0.18);
      path.cubicTo(size.width * 2.64, size.height * 0.11, size.width * 2.57,
          size.height * 0.07, size.width * 2.48, size.height * 0.07);
      path.cubicTo(size.width * 2.42, size.height * 0.08, size.width * 2.36,
          size.height * 0.11, size.width * 2.33, size.height * 0.15);
      path.cubicTo(size.width * 2.32, size.height * 0.17, size.width * 2.32,
          size.height * 0.17, size.width * 2.32, size.height / 5);
      path.cubicTo(size.width * 2.32, size.height * 0.24, size.width * 2.32,
          size.height * 0.24, size.width * 2.33, size.height * 0.26);
      path.cubicTo(size.width * 2.33, size.height * 0.27, size.width * 2.35,
          size.height * 0.29, size.width * 2.36, size.height * 0.3);
      path.cubicTo(size.width * 2.42, size.height * 0.34, size.width * 2.5,
          size.height * 0.35, size.width * 2.57, size.height * 0.32);
      path.cubicTo(size.width * 2.61, size.height * 0.31, size.width * 2.64,
          size.height * 0.29, size.width * 2.66, size.height * 0.27);
      path.cubicTo(size.width * 2.66, size.height * 0.26, size.width * 2.66,
          size.height / 4, size.width * 2.67, size.height / 4);
      path.cubicTo(size.width * 2.67, size.height / 4, size.width * 2.67,
          size.height * 0.24, size.width * 2.67, size.height * 0.23);
      path.cubicTo(size.width * 2.67, size.height * 0.23, size.width * 2.67,
          size.height * 0.22, size.width * 2.68, size.height * 0.22);
      path.cubicTo(size.width * 2.68, size.height / 5, size.width * 2.68,
          size.height / 5, size.width * 2.68, size.height * 0.23);
      path.cubicTo(size.width * 2.67, size.height * 0.28, size.width * 2.6,
          size.height / 3, size.width * 2.53, size.height * 0.34);
      path.cubicTo(size.width * 2.5, size.height * 0.35, size.width * 2.48,
          size.height * 0.35, size.width * 2.45, size.height * 0.34);
      path.cubicTo(size.width * 2.45, size.height * 0.34, size.width * 2.45,
          size.height * 0.34, size.width * 2.45, size.height * 0.34);
      canvas.drawPath(path, paint);
    }
""";
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
