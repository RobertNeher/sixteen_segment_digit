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
  static const String segmentIndex = 'abhkmncupgtsrdfe.\'';
  static const Map<String, String> segmentMap = {
    //    012345678901234567
    //    abhkmncupgtsrdfe.'
    ' ': '111111111111111111',
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

    segment = 'c';
    if (segmentIndex.indexOf(segment) == 6) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(290 + offset_x, 50 + offset_y);
      path.relativeLineTo(40, -35);
      path.relativeLineTo(20, 20);
      path.relativeLineTo(-40, 225);
      path.relativeLineTo(-27, 0);
      path.relativeLineTo(-30, -25);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'u';
    if (segmentIndex.indexOf(segment) == 7) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(-50 + offset_x, 275 + offset_y);
      path.relativeLineTo(40, -30);
      path.relativeLineTo(135, 0);
      path.relativeLineTo(-7, 55);
      path.relativeLineTo(-125, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'p';
    if (segmentIndex.indexOf(segment) == 8) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(135 + offset_x, 245 + offset_y);
      path.relativeLineTo(115, 0);
      path.relativeLineTo(40, 30);
      path.relativeLineTo(-35, 30);
      path.relativeLineTo(-130, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'g';
    if (segmentIndex.indexOf(segment) == 9) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(-70 + offset_x, 285 + offset_y);
      path.relativeLineTo(20, 0);
      path.relativeLineTo(30, 20);
      path.relativeLineTo(-35, 190);
      path.relativeLineTo(-45, 40);
      path.relativeLineTo(-15, -15);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 't';
    if (segmentIndex.indexOf(segment) == 10) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(60 + offset_x, 310 + offset_y);
      path.relativeLineTo(30, 0);
      path.relativeLineTo(-10, 50);
      path.relativeLineTo(-100, 135);
      path.relativeLineTo(-20, 0);
      path.relativeLineTo(10, -65);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 's';
    if (segmentIndex.indexOf(segment) == 11) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(115 + offset_x, 310 + offset_y);
      path.relativeLineTo(20, 0);
      path.relativeLineTo(10, 50);
      path.relativeLineTo(-20, 135);
      path.relativeLineTo(-55, 0);
      path.relativeLineTo(20, -125);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'r';
    if (segmentIndex.indexOf(segment) == 12) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(150 + offset_x, 310 + offset_y);
      path.relativeLineTo(27, 0);
      path.relativeLineTo(40, 125);
      path.relativeLineTo(-15, 60);
      path.relativeLineTo(-20, 0);
      path.relativeLineTo(-30, -125);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'd';
    if (segmentIndex.indexOf(segment) == 13) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(240 + offset_x, 320 + offset_y);
      path.relativeLineTo(50, -30);
      path.relativeLineTo(10, 0);
      path.relativeLineTo(-35, 220);
      path.relativeLineTo(-25, 25);
      path.relativeLineTo(-30, -35);
      path.relativeLineTo(20, -125);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'f';
    if (segmentIndex.indexOf(segment) == 14) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(-90 + offset_x, 537 + offset_y);
      path.relativeLineTo(40, -30);
      path.relativeLineTo(140, 0);
      path.relativeLineTo(-10, 50);
      path.relativeLineTo(-150, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = 'e';
    if (segmentIndex.indexOf(segment) == 15) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(-90 + offset_x, 537 + offset_y);
      path.relativeLineTo(40, -30);
      path.relativeLineTo(140, 0);
      path.relativeLineTo(-10, 50);
      path.relativeLineTo(-150, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = '.';
    if (segmentIndex.indexOf(segment) == 16) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.addOval(Rect.fromCircle(
          center: Offset(320 + offset_x, 525 + offset_y), radius: 35));
      canvas.drawPath(path, paint);
    }

    segment = '\'';
    if (segmentIndex.indexOf(segment) == 17) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      print(segment);
      path = Path();
      path.moveTo(-75 + offset_x, -10 + offset_y);
      path.relativeLineTo(40, 0);
      path.relativeLineTo(-40, 40);
      path.close();
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
