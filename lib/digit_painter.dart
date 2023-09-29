import 'package:flutter/material.dart';

class DigitPainter extends CustomPainter {
  String symbol;
  Color foreground;
  Color background;
  double opacity;
  bool separator = false;
  bool decimalPoint = false;

  DigitPainter({
    this.symbol = '',
    this.foreground = Colors.red,
    this.background = Colors.yellowAccent,
    this.opacity = 0.5,
    this.separator = false,
    this.decimalPoint = false,
  }) {
    foreground = foreground.withOpacity(opacity);
    background = background.withOpacity(opacity);
  }

  static const String segmentIndex = 'abhkmncupgtsrdfe.\'';
  static const Map<String, String> segmentMap = {
    'all': '111111111111111',
    //    0123456789012345
    //    abhkmncupgtsrdfe
    ' ': '0000000000000000',
    '!': '0000001000000100',
    '"': '0000101000000000',
    '#': '0000101110010111',
    '\$': '111010011001011',
    '%': '1010110110110101',
    '&': '1001100101001011',
    '\'': '0000100000000000',
    '(': '0000010000001000',
    ')': '0001000000100000',
    '*': '0001110110111000',
    '+': '0000100110010000',
    ',': '0000000000100000',
    '-': '0000000110000000',
    '.': '0000000000000000',
    '/': '0000010000100000',
    '0': '1110011001100111',
    '1': '0000011000000100',
    '2': '1100001111000011',
    '3': '1100001110000111',
    '4': '0010001110000100',
    '5': '1110000100001011',
    '6': '1110000111000111',
    '7': '1100001000000100',
    '8': '1110001111000111',
    '9': '1110001110000111',
    ':': '0000100000010000',
    ';': '0000100000100000',
    '<': '0000010100001000',
    '=': '0000000110000011',
    '>': '0001000010100000',
    '?': '1100001010010000',
    '@': '1110101011000011',
    'A': '1110001111000100',
    'B': '1100101010010111',
    'C': '1110000001000010',
    'D': '1100101000010111',
    'E': '1110000111000011',
    'F': '1110000111000000',
    'G': '1110000011000111',
    'H': '0010001111000100',
    'I': '1100100000010011',
    'J': '0000001001000111',
    'K': '0010010101001000',
    'L': '0010000001000011',
    'M': '0011011001000100',
    'N': '0011001001001100',
    'O': '1110001001000111',
    'P': '1110001111000000',
    'Q': '1110001001001111',
    'R': '1110001111001000',
    'S': '1110000110000111',
    'T': '1100100000010000',
    'U': '0010001001000111',
    'V': '0010010001100000',
    'W': '0010001001101100',
    'X': '0001010000101000',
    'Y': '0010001110000111',
    'Z': '1100010000100011',
    '[': '0100100000010001',
    '\\': '0001000000001000',
    ']': '1000100000010010',
    '^': '0000000000101000',
    '_': '0000000000000011',
    '`': '0001000000000000',
    'a': '0000000101010011',
    'b': '0010000101010010',
    'c': '0000000101000010',
    'd': '0000100101010010',
    'e': '0000000101100010',
    'f': '0100100110010000',
    'g': '1010100100010010',
    'h': '0010000101010000',
    'i': '0000000000010000',
    'j': '0000100001010010',
    'k': '0000110000011000',
    'l': '0010000001000000',
    'm': '0000000111010100',
    'n': '0000000101010000',
    'o': '0000000101010010',
    'p': '1010100101000000',
    'q': '1010100100010000',
    'r': '0000000101000000',
    's': '1010000100010010',
    't': '0010000101000010',
    'u': '0000000001010010',
    'v': '0000000001100000',
    'w': '0000000001101100',
    'x': '0001010000101000',
    'y': '0000101010000101',
    'z': '0000000100100010',
    '{': '0100100100010001',
    '|': '0000100000010000',
    '}': '1000100010010010',
    '~': '1010101010000000',
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
    if (segmentIndex.indexOf(segment) == 16 || decimalPoint) {
      paint.color = decimalPoint ? foreground : background;
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
