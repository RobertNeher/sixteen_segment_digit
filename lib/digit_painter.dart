import 'package:flutter/material.dart';

class DigitPainter extends CustomPainter {
  String symbol;
  Color foreground;
  Color background;
  double opacity;
  bool separator = true;

  DigitPainter({
    this.symbol = '',
    this.foreground = Colors.red,
    this.background = Colors.yellowAccent,
    this.opacity = 0.5,
    this.separator = false,
  }) {
    foreground = foreground.withOpacity(opacity);
    background = background.withOpacity(opacity);
  }

  static const String segmentIndex = 'abhkmncupgtsrdfe.\'';
  static const Map<String, String> segmentMap = {
    'all': '11111111111111111',
    //    012345678901234567
    //    abhkmncupgtsrdfe.'
    ' ': '000000000000000000',
    '!': '000000100000010010',
    '"': '000010100000000000',
    '#': '000010111001011100',
    '\$': '11101001100101110',
    '%': '101011011011010100',
    '&': '100110010100101100',
    '\'': '000010000000000000',
    '(': '000001000000100000',
    ')': '000100000010000000',
    '*': '000111011011100000',
    '+': '000010011001000000',
    ',': '000000000010000000',
    '-': '000000011000000000',
    '.': '000000000000000010',
    '/': '000001000010000000',
    '0': '111001100110011100',
    '1': '000001100000010000',
    '2': '110000111100001100',
    '3': '110000111000011100',
    '4': '001000111000010000',
    '5': '111000010000101100',
    '6': '111000011100011100',
    '7': '110000100000010000',
    '8': '111000111100011100',
    '9': '111000111000011100',
    ':': '000010000001000000',
    ';': '000010000010000000',
    '<': '000001010000100000',
    '=': '000000011000001100',
    '>': '000100001010000000',
    '?': '110000101001000010',
    '@': '111010101100001100',
    'A': '111000111100010000',
    'B': '110010101001011100',
    'C': '111000000100001100',
    'D': '110010100001011100',
    'E': '111000011100001100',
    'F': '111000011100000000',
    'G': '111000001100011100',
    'H': '001000111100010000',
    'I': '110010000001001100',
    'J': '000000100100011100',
    'K': '001001010100100000',
    'L': '001000000100001100',
    'M': '001101100100010000',
    'N': '001100100100110000',
    'O': '111000100100011100',
    'P': '111000111100000000',
    'Q': '111000100100111100',
    'R': '111000111100100000',
    'S': '111000011000011100',
    'T': '110010000001000000',
    'U': '001000100100011100',
    'V': '001001000110000000',
    'W': '001000100110110000',
    'X': '000101000010100000',
    'Y': '001000111000011100',
    'Z': '110001000010001100',
    '[': '010010000001000100',
    '\\': '000100000000100000',
    ']': '100010000001001000',
    '^': '000000000010100000',
    '_': '000000000000001100',
    '`': '000100000000000000',
    'a': '000000010101001100',
    'b': '001000010101001000',
    'c': '000000010100001000',
    'd': '000010010101001000',
    'e': '000000010110001000',
    'f': '010010011001000000',
    'g': '101010010001001000',
    'h': '001000010101000000',
    'i': '000000000001000000',
    'j': '000010000101001000',
    'k': '000011000001100000',
    'l': '001000000100000000',
    'm': '000000011101010000',
    'n': '000000010101000000',
    'o': '000000010101001000',
    'p': '101010010100000000',
    'q': '101010010001000000',
    'r': '000000010100000000',
    's': '101000010001001000',
    't': '001000010100001000',
    'u': '000000000101001000',
    'v': '000000000110000000',
    'w': '000000000110110000',
    'x': '000101000010100000',
    'y': '000010101000010100',
    'z': '000000010010001000',
    '{': '010010010001000100',
    '|': '000010000001000000',
    '}': '100010001001001000',
    '~': '101010101000000000',
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
      path = Path();
      path.moveTo(105 + offset_x, 505 + offset_y);
      path.relativeLineTo(100, 0);
      path.relativeLineTo(30, 35);
      path.relativeLineTo(-20, 20);
      path.relativeLineTo(-120, 0);
      path.close();
      canvas.drawPath(path, paint);
    }

    segment = '.';
    if (segmentIndex.indexOf(segment) == 16) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
      path = Path();
      path.addOval(Rect.fromCircle(
          center: Offset(320 + offset_x, 525 + offset_y), radius: 35));
      canvas.drawPath(path, paint);
    }

    segment = '\'';
    if (segmentIndex.indexOf(segment) == 17 || separator) {
      paint.color = separator ? foreground : background;
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
