import 'package:flutter/material.dart';

class DigitPainter extends CustomPainter {
  String symbol;
  Color foreground;
  Color background;

  DigitPainter({
    this.symbol = '',
    this.foreground = Colors.red,
    this.background = Colors.yellowAccent,
  }) {
    foreground = foreground.withOpacity(opacity);
    background = background.withOpacity(opacity);
  }

  static const double opacity = 0.5;
  static const String segmentIndex = 'abhkmncupgtsrdfe.\'';
  static const Map<String, String> segmentMap = {
    'all': '11111111111111110',
    //    012345678901234567
    //    abh kmncupgtsrdfe.'
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
    //    abhkmncupgtsrdfe.'
    'B': '001010100011111100',
    'C': '000000001111001100',
    'D': '001000100011111100',
    'E': '100000001111001100',
    'F': '100000001100001100',
    'G': '000010001111101100',
    'H': '100010001100110000',
    'I': '001000100011001100',
    'J': '000000000111110000',
    'K': '100101001100000000',
    'L': '000000001111000000',
    'M': '000001011100110000',
    'N': '000100011100110000',
    'O': '000000001111111100',
    'P': '100010001100011100',
    'Q': '000100001111111100',
    'R': '100110001100011100',
    'S': '100010001011101100',
    'T': '001000100000001100',
    'U': '000000001111110000',
    'V': '010001001100000000',
    'W': '010100001100110000',
    'X': '010101010000000000',
    'Y': '100010001011110000',
    'Z': '010001000011001100',
    '[': '001000100001001000',
    '\\': '000100010000000000',
    ']': '001000100010000100',
    '^': '010100000000000000',
    '_': '000000000011000000',
    '`': '000000010000000000',
    'a': '101000000111000000',
    'b': '101000001110000000',
    'c': '100000000110000000',
    'd': '001010000001110000',
    'e': '110000000110000000',
    'f': '101010100000001000',
    'g': '101000101010000100',
    'h': '101000001100000000',
    'i': '001000000000000000',
    'j': '001000100110000000',
    'k': '001101100000000000',
    'l': '000000001100000000',
    'm': '101010000100100000',
    'n': '101000000100000000',
    'o': '101000000110000000',
    'p': '100000101100000100',
    'q': '101000101000000100',
    'r': '100000000100000000',
    's': '101000001010000100',
    't': '100000001110000000',
    'u': '001000000110000000',
    'v': '010000000100000000',
    'w': '010100000100100000',
    'x': '010101010000000000',
    'y': '000010100001110000',
    'z': '110000000010000000',
    '{': '101000100001001000',
    '|': '001000100000000000',
    '}': '001010100010000100',
    '~': '110011000000000000',
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
    if (segmentIndex.indexOf(segment) == 17) {
      paint.color = _segmentOnOff(segmentIndex.indexOf(segment))
          ? foreground
          : background;
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
