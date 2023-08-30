import 'package:flutter/material.dart';

class DigitPainter extends CustomPainter {
  String symbol;
  Color foreground;
  Color background;

  DigitPainter(
      {this.symbol = ' ',
      this.foreground = Colors.red,
      this.background = Colors.transparent});

  bool _segmentOnOff(int index) {
    String segmentPattern = segmentMap[symbol]!;
    for (int i = 0; i < segmentPattern.length; i++) {
      if ((i == index) && (segmentPattern[i] == '1')) {
        return true;
      }
    }
    return false;
  }

  static const Map<String, String> segmentMap = {
    'all': '1111111111111111',
    ' ': '1000000000000000',
    '!': '0000000000001100',
    '"': '0000001000000100',
    '#': '1010101000111100',
    '\$': '1010101010111011',
    '%': '1110111010011001',
    '&': '1001001101110001',
    '\'': '0000001000000000',
    '(': '0001010000000000',
    ')': '0100000100000000',
    '*': '1111111100000000',
    '+': '1010101000000000',
    ',': '0100000000000000',
    '-': '1000100000000000',
    '.': '0001000000000000',
    '/': '0100010000000000',
    '0': '0100010011111111',
    '1': '0000010000001100',
    '2': '1000100001110111',
    '3': '0000100000111111',
    '4': '1000100010001100',
    '5': '1001000010110011',
    '6': '1000100011111011',
    '7': '0000000000001111',
    '8': '1000100011111111',
    '9': '1000100010111111',
    ':': '0010001000000000',
    ';': '0100001000000000',
    '<': '1001010000000000',
    '=': '1000100000110000',
    '>': '0100100100000000',
    '?': '0010100000000111',
    '@': '0000101011110111',
    'A': '1000100011001111',
    'B': '0010101000111111',
    'C': '0000000011110011',
    'D': '0010001000111111',
    'E': '1000000011110011',
    'F': '1000000011000011',
    'G': '0000100011111011',
    'H': '1000100011001100',
    'I': '0010001000110011',
    'J': '0000000001111100',
    'K': '1001010011000000',
    'L': '0000000011110000',
    'M': '0000010111001100',
    'N': '0001000111001100',
    'O': '0000000011111111',
    'P': '1000100011000111',
    'Q': '0001000011111111',
    'R': '1001100011000111',
    'S': '1000100010111011',
    'T': '0010001000000011',
    'U': '0000000011111100',
    'V': '0100010011000000',
    'W': '0101000011001100',
    'X': '0101010100000000',
    'Y': '1000100010111100',
    'Z': '0100010000110011',
    '[': '0010001000010010',
    '\\': '0001000100000000',
    ']': '0010001000100001',
    '^': '0101000000000000',
    '_': '0000000000110000',
    '`': '0000000100000000',
    'a': '1010000001110000',
    'b': '1010000011100000',
    'c': '1000000001100000',
    'd': '0010100000011100',
    'e': '1100000001100000',
    'f': '1010101000000010',
    'g': '1010001010100001',
    'h': '1010000011000000',
    'i': '0010000000000000',
    'j': '0010001001100000',
    'k': '0011011000000000',
    'l': '0000000011000000',
    'm': '1010100001001000',
    'n': '1010000001000000',
    'o': '1010000001100000',
    'p': '1000001011000001',
    'q': '1010001010000001',
    'r': '1000000001000000',
    's': '1010000010100001',
    't': '1000000011100000',
    'u': '0010000001100000',
    'v': '0100000001000000',
    'w': '0101000001001000',
    'x': '0101010100000000',
    'y': '0000101000011100',
    'z': '1100000000100000',
    '{': '1010001000010010',
    '|': '0010001000000000',
    '}': '0010101000100001',
    '~': '1100110000000000',
  };

  @override
  void paint(Canvas canvas, Size _size) {
    Paint paint = Paint();
    Path path = Path();
    Size size = Size(_size.width / 3, _size.height / 3);

    // Path number 0
    if (_segmentOnOff(0)) {
      print(0);
      paint.color = foreground; // _segmentOnOff(1)
      // ? foreground.withOpacity(1)
      // : background.withOpacity(1);
      paint.style = PaintingStyle.fill;
      path = Path();
      path.moveTo(20, 20);
      // path.moveTo(size.width * 0.1, size.height * 1.04);
      // path.cubicTo(size.width * 0.1, size.height * 1.04, size.width * 0.05,
      //     size.height * 0.89, size.width * 0.05, size.height * 0.89);
      // path.cubicTo(size.width * 0.05, size.height * 0.89, size.width * 0.06,
      //     size.height * 0.84, size.width * 0.06, size.height * 0.84);
      // path.cubicTo(size.width * 0.07, size.height * 0.81, size.width * 0.11,
      //     size.height * 0.66, size.width * 0.15, size.height / 2);
      // path.cubicTo(size.width * 0.15, size.height / 2, size.width * 0.22,
      //     size.height / 5, size.width * 0.22, size.height / 5);
      // path.cubicTo(size.width * 0.22, size.height / 5, size.width * 0.61,
      //     size.height / 5, size.width * 0.61, size.height / 5);
      // path.cubicTo(size.width * 0.61, size.height / 5, size.width,
      //     size.height / 5, size.width, size.height / 5);
      // path.cubicTo(size.width, size.height / 5, size.width, size.height * 0.24,
      //     size.width, size.height * 0.24);
      // path.cubicTo(size.width, size.height * 0.27, size.width,
      //     size.height * 0.47, size.width * 1.02, size.height * 0.7);
      // path.cubicTo(size.width * 1.03, size.height * 0.93, size.width * 1.04,
      //     size.height * 1.14, size.width * 1.05, size.height * 1.16);
      // path.cubicTo(size.width * 1.05, size.height * 1.16, size.width * 1.05,
      //     size.height * 1.2, size.width * 1.05, size.height * 1.2);
      // path.cubicTo(size.width * 1.05, size.height * 1.2, size.width * 0.6,
      //     size.height * 1.2, size.width * 0.6, size.height * 1.2);
      // path.cubicTo(size.width * 0.6, size.height * 1.2, size.width * 0.15,
      //     size.height * 1.2, size.width * 0.15, size.height * 1.2);
      // path.cubicTo(size.width * 0.15, size.height * 1.2, size.width * 0.1,
      //     size.height * 1.04, size.width * 0.1, size.height * 1.04);
      // path.cubicTo(size.width * 0.1, size.height * 1.04, size.width * 0.1,
      //     size.height * 1.04, size.width * 0.1, size.height * 1.04);
      // path.lineTo(size.width * 1.04, size.height * 1.15);
      // path.cubicTo(size.width * 1.04, size.height * 1.13, size.width * 1.02,
      //     size.height * 0.91, size.width, size.height * 0.67);
      // path.cubicTo(size.width, size.height * 0.67, size.width,
      //     size.height * 0.23, size.width, size.height * 0.23);
      // path.cubicTo(size.width, size.height * 0.23, size.width * 0.61,
      //     size.height * 0.23, size.width * 0.61, size.height * 0.23);
      // path.cubicTo(size.width * 0.61, size.height * 0.23, size.width * 0.23,
      //     size.height * 0.23, size.width * 0.23, size.height * 0.23);
      // path.cubicTo(size.width * 0.23, size.height * 0.23, size.width * 0.14,
      //     size.height * 0.56, size.width * 0.14, size.height * 0.56);
      // path.cubicTo(size.width * 0.14, size.height * 0.56, size.width * 0.06,
      //     size.height * 0.88, size.width * 0.06, size.height * 0.88);
      // path.cubicTo(size.width * 0.06, size.height * 0.88, size.width * 0.11,
      //     size.height * 1.03, size.width * 0.11, size.height * 1.03);
      // path.cubicTo(size.width * 0.11, size.height * 1.03, size.width * 0.16,
      //     size.height * 1.19, size.width * 0.16, size.height * 1.19);
      // path.cubicTo(size.width * 0.16, size.height * 1.19, size.width * 0.6,
      //     size.height * 1.19, size.width * 0.6, size.height * 1.19);
      // path.cubicTo(size.width * 0.6, size.height * 1.19, size.width * 1.04,
      //     size.height * 1.19, size.width * 1.04, size.height * 1.19);
      // path.cubicTo(size.width * 1.04, size.height * 1.19, size.width * 1.04,
      //     size.height * 1.15, size.width * 1.04, size.height * 1.15);
      // path.cubicTo(size.width * 1.04, size.height * 1.15, size.width * 1.04,
      //     size.height * 1.15, size.width * 1.04, size.height * 1.15);
      path.close();
      canvas.drawPath(path, paint);
    }

    // Path number 1
    if (_segmentOnOff(1)) {
      print(1);
      paint.color =
          foreground; // _segmentOnOff(1) ? foreground.withOpacity(0) : background;
      paint.style = PaintingStyle.fill;
      path = Path();

      path.moveTo(size.width * 1.78, size.height * 2.36);
      path.cubicTo(size.width * 1.78, size.height * 2.35, size.width * 1.73,
          size.height * 2.15, size.width * 1.73, size.height * 2.15);
      path.cubicTo(size.width * 1.73, size.height * 2.14, size.width * 1.75,
          size.height * 2.14, size.width * 2.01, size.height * 2.14);
      path.cubicTo(size.width * 2.01, size.height * 2.14, size.width * 2.29,
          size.height * 2.14, size.width * 2.29, size.height * 2.14);
      path.cubicTo(size.width * 2.29, size.height * 2.14, size.width * 2.41,
          size.height * 2.22, size.width * 2.41, size.height * 2.22);
      path.cubicTo(size.width * 2.47, size.height * 2.26, size.width * 2.53,
          size.height * 2.29, size.width * 2.53, size.height * 2.29);
      path.cubicTo(size.width * 2.53, size.height * 2.3, size.width * 2.52,
          size.height * 2.31, size.width * 2.5, size.height * 2.33);
      path.cubicTo(size.width * 2.5, size.height * 2.33, size.width * 2.47,
          size.height * 2.36, size.width * 2.47, size.height * 2.36);
      path.cubicTo(size.width * 2.47, size.height * 2.36, size.width * 2.13,
          size.height * 2.36, size.width * 2.13, size.height * 2.36);
      path.cubicTo(size.width * 1.85, size.height * 2.36, size.width * 1.78,
          size.height * 2.36, size.width * 1.78, size.height * 2.36);
      path.cubicTo(size.width * 1.78, size.height * 2.36, size.width * 1.78,
          size.height * 2.36, size.width * 1.78, size.height * 2.36);
      path.lineTo(size.width * 2.49, size.height * 2.33);
      // path.cubicTo(size.width * 2.51, size.height * 2.31, size.width * 2.52,
      //     size.height * 2.3, size.width * 2.52, size.height * 2.3);
      // path.cubicTo(size.width * 2.52, size.height * 2.29, size.width * 2.47,
      //     size.height * 2.26, size.width * 2.4, size.height * 2.22);
      // path.cubicTo(size.width * 2.4, size.height * 2.22, size.width * 2.29,
      //     size.height * 2.15, size.width * 2.29, size.height * 2.15);
      // path.cubicTo(size.width * 2.29, size.height * 2.15, size.width * 2.01,
      //     size.height * 2.15, size.width * 2.01, size.height * 2.15);
      // path.cubicTo(size.width * 1.77, size.height * 2.15, size.width * 1.74,
      //     size.height * 2.15, size.width * 1.74, size.height * 2.15);
      // path.cubicTo(size.width * 1.74, size.height * 2.16, size.width * 1.75,
      //     size.height * 2.2, size.width * 1.76, size.height * 2.26);
      // path.cubicTo(size.width * 1.78, size.height * 2.31, size.width * 1.79,
      //     size.height * 2.36, size.width * 1.79, size.height * 2.36);
      // path.cubicTo(size.width * 1.79, size.height * 2.36, size.width * 1.94,
      //     size.height * 2.36, size.width * 2.12, size.height * 2.36);
      // path.cubicTo(size.width * 2.12, size.height * 2.36, size.width * 2.46,
      //     size.height * 2.36, size.width * 2.46, size.height * 2.36);
      // path.cubicTo(size.width * 2.46, size.height * 2.36, size.width * 2.49,
      //     size.height * 2.33, size.width * 2.49, size.height * 2.33);
      // path.cubicTo(size.width * 2.49, size.height * 2.33, size.width * 2.49,
      //     size.height * 2.33, size.width * 2.49, size.height * 2.33);
      canvas.drawPath(path, paint);
    }

    // Path number 2
    if (_segmentOnOff(2)) {
      print(2);
      paint.color =
          foreground; // _segmentOnOff(2) ? foreground.withOpacity(0) : background;
      paint.style = PaintingStyle.fill;
      path = Path();
      path.moveTo(size.width * 0.65, size.height * 2.22);
      path.cubicTo(size.width * 0.65, size.height * 2.22, size.width * 0.59,
          size.height * 2.17, size.width * 0.59, size.height * 2.17);
      path.cubicTo(size.width * 0.59, size.height * 2.17, size.width * 0.52,
          size.height * 1.9, size.width * 0.52, size.height * 1.9);
      path.cubicTo(size.width * 0.49, size.height * 1.75, size.width * 0.44,
          size.height * 1.55, size.width * 0.41, size.height * 1.45);
      path.cubicTo(size.width * 0.39, size.height * 1.35, size.width * 0.37,
          size.height * 1.27, size.width * 0.37, size.height * 1.26);
      path.cubicTo(size.width * 0.37, size.height * 1.26, size.width * 0.39,
          size.height * 1.26, size.width * 0.42, size.height * 1.26);
      path.cubicTo(size.width * 0.42, size.height * 1.26, size.width * 0.48,
          size.height * 1.26, size.width * 0.48, size.height * 1.26);
      path.cubicTo(size.width * 0.48, size.height * 1.26, size.width * 0.59,
          size.height * 1.32, size.width * 0.59, size.height * 1.32);
      path.cubicTo(size.width * 0.65, size.height * 1.35, size.width * 0.7,
          size.height * 1.38, size.width * 0.7, size.height * 1.38);
      path.cubicTo(size.width * 0.71, size.height * 1.38, size.width * 0.88,
          size.height * 2.1, size.width * 0.88, size.height * 2.11);
      path.cubicTo(size.width * 0.88, size.height * 2.12, size.width * 0.72,
          size.height * 2.26, size.width * 0.71, size.height * 2.26);
      path.cubicTo(size.width * 0.71, size.height * 2.26, size.width * 0.68,
          size.height * 2.24, size.width * 0.65, size.height * 2.22);
      path.cubicTo(size.width * 0.65, size.height * 2.22, size.width * 0.65,
          size.height * 2.22, size.width * 0.65, size.height * 2.22);
      path.lineTo(size.width * 0.8, size.height * 2.18);
      // path.cubicTo(size.width * 0.8, size.height * 2.18, size.width * 0.87,
      //     size.height * 2.11, size.width * 0.87, size.height * 2.11);
      // path.cubicTo(size.width * 0.87, size.height * 2.11, size.width * 0.79,
      //     size.height * 1.75, size.width * 0.79, size.height * 1.75);
      // path.cubicTo(size.width * 0.79, size.height * 1.75, size.width * 0.7,
      //     size.height * 1.38, size.width * 0.7, size.height * 1.38);
      // path.cubicTo(size.width * 0.7, size.height * 1.38, size.width * 0.59,
      //     size.height * 1.33, size.width * 0.59, size.height * 1.33);
      // path.cubicTo(size.width * 0.59, size.height * 1.33, size.width * 0.48,
      //     size.height * 1.27, size.width * 0.48, size.height * 1.27);
      // path.cubicTo(size.width * 0.48, size.height * 1.27, size.width * 0.43,
      //     size.height * 1.27, size.width * 0.43, size.height * 1.27);
      // path.cubicTo(size.width * 0.4, size.height * 1.27, size.width * 0.38,
      //     size.height * 1.27, size.width * 0.38, size.height * 1.27);
      // path.cubicTo(size.width * 0.38, size.height * 1.27, size.width * 0.42,
      //     size.height * 1.45, size.width * 0.47, size.height * 1.66);
      // path.cubicTo(size.width * 0.52, size.height * 1.88, size.width * 0.57,
      //     size.height * 2.08, size.width * 0.58, size.height * 2.11);
      // path.cubicTo(size.width * 0.58, size.height * 2.11, size.width * 0.59,
      //     size.height * 2.17, size.width * 0.59, size.height * 2.17);
      // path.cubicTo(size.width * 0.59, size.height * 2.17, size.width * 0.65,
      //     size.height * 2.21, size.width * 0.65, size.height * 2.21);
      // path.cubicTo(size.width * 0.69, size.height * 2.23, size.width * 0.71,
      //     size.height * 2.25, size.width * 0.71, size.height * 2.25);
      // path.cubicTo(size.width * 0.72, size.height * 2.25, size.width * 0.75,
      //     size.height * 2.22, size.width * 0.8, size.height * 2.18);
      // path.cubicTo(size.width * 0.8, size.height * 2.18, size.width * 0.8,
      //     size.height * 2.18, size.width * 0.8, size.height * 2.18);
      canvas.drawPath(path, paint);
    }

    // Path number 3
    if (_segmentOnOff(3)) {
      print(3);
      paint.color = foreground;
      paint.style = PaintingStyle.fill;
      // _segmentOnOff(3) ? foreground.withOpacity(0) : background;
      path = Path();

      path.moveTo(size.width * 2.45, size.height * 2.19);
      path.cubicTo(size.width * 2.39, size.height * 2.15, size.width * 2.34,
          size.height * 2.12, size.width * 2.33, size.height * 2.12);
      path.cubicTo(size.width * 2.32, size.height * 2.11, size.width * 2.31,
          size.height * 2.07, size.width * 2.24, size.height * 1.75);
      path.cubicTo(size.width * 2.19, size.height * 1.55, size.width * 2.15,
          size.height * 1.38, size.width * 2.15, size.height * 1.38);
      path.cubicTo(size.width * 2.15, size.height * 1.37, size.width * 2.15,
          size.height * 1.36, size.width * 2.23, size.height * 1.33);
      path.cubicTo(size.width * 2.23, size.height * 1.33, size.width * 2.31,
          size.height * 1.28, size.width * 2.31, size.height * 1.28);
      path.cubicTo(size.width * 2.31, size.height * 1.28, size.width * 2.37,
          size.height * 1.28, size.width * 2.37, size.height * 1.28);
      path.cubicTo(size.width * 2.43, size.height * 1.28, size.width * 2.43,
          size.height * 1.28, size.width * 2.43, size.height * 1.29);
      path.cubicTo(size.width * 2.44, size.height * 1.31, size.width * 2.64,
          size.height * 2.17, size.width * 2.64, size.height * 2.17);
      path.cubicTo(size.width * 2.64, size.height * 2.18, size.width * 2.57,
          size.height * 2.26, size.width * 2.57, size.height * 2.26);
      path.cubicTo(size.width * 2.56, size.height * 2.26, size.width * 2.51,
          size.height * 2.23, size.width * 2.45, size.height * 2.19);
      path.cubicTo(size.width * 2.45, size.height * 2.19, size.width * 2.45,
          size.height * 2.19, size.width * 2.45, size.height * 2.19);
      path.lineTo(size.width * 2.6, size.height * 2.21);
      // path.cubicTo(size.width * 2.6, size.height * 2.21, size.width * 2.64,
      //     size.height * 2.18, size.width * 2.64, size.height * 2.18);
      // path.cubicTo(size.width * 2.64, size.height * 2.18, size.width * 2.53,
      //     size.height * 1.74, size.width * 2.53, size.height * 1.74);
      // path.cubicTo(size.width * 2.47, size.height * 1.49, size.width * 2.43,
      //     size.height * 1.29, size.width * 2.42, size.height * 1.29);
      // path.cubicTo(size.width * 2.42, size.height * 1.29, size.width * 2.41,
      //     size.height * 1.29, size.width * 2.37, size.height * 1.29);
      // path.cubicTo(size.width * 2.37, size.height * 1.29, size.width * 2.31,
      //     size.height * 1.29, size.width * 2.31, size.height * 1.29);
      // path.cubicTo(size.width * 2.31, size.height * 1.29, size.width * 2.23,
      //     size.height * 1.33, size.width * 2.23, size.height * 1.33);
      // path.cubicTo(size.width * 2.16, size.height * 1.36, size.width * 2.15,
      //     size.height * 1.37, size.width * 2.15, size.height * 1.38);
      // path.cubicTo(size.width * 2.16, size.height * 1.38, size.width * 2.19,
      //     size.height * 1.54, size.width * 2.24, size.height * 1.74);
      // path.cubicTo(size.width * 2.29, size.height * 1.94, size.width * 2.33,
      //     size.height * 2.1, size.width * 2.33, size.height * 2.1);
      // path.cubicTo(size.width * 2.33, size.height * 2.11, size.width * 2.56,
      //     size.height * 2.25, size.width * 2.56, size.height * 2.25);
      // path.cubicTo(size.width * 2.57, size.height * 2.25, size.width * 2.58,
      //     size.height * 2.23, size.width * 2.6, size.height * 2.21);
      // path.cubicTo(size.width * 2.6, size.height * 2.21, size.width * 2.6,
      //     size.height * 2.21, size.width * 2.6, size.height * 2.21);
      canvas.drawPath(path, paint);
    }

    // Path number 4
    if (_segmentOnOff(4)) {
      print(4);
      paint.color = _segmentOnOff(4) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 0.91, size.height * 2.05);
      path.cubicTo(size.width * 0.9, size.height * 2.03, size.width * 0.89,
          size.height * 2, size.width * 0.89, size.height * 1.97);
      path.cubicTo(size.width * 0.89, size.height * 1.97, size.width * 0.87,
          size.height * 1.94, size.width * 0.87, size.height * 1.94);
      path.cubicTo(size.width * 0.87, size.height * 1.94, size.width * 1.03,
          size.height * 1.65, size.width * 1.03, size.height * 1.65);
      path.cubicTo(size.width * 1.12, size.height * 1.49, size.width * 1.19,
          size.height * 1.36, size.width * 1.19, size.height * 1.35);
      path.cubicTo(size.width * 1.19, size.height * 1.35, size.width * 1.22,
          size.height * 1.35, size.width * 1.26, size.height * 1.35);
      path.cubicTo(size.width * 1.26, size.height * 1.35, size.width * 1.32,
          size.height * 1.35, size.width * 1.32, size.height * 1.35);
      path.cubicTo(size.width * 1.32, size.height * 1.35, size.width * 1.32,
          size.height * 1.46, size.width * 1.32, size.height * 1.46);
      path.cubicTo(size.width * 1.32, size.height * 1.46, size.width * 1.32,
          size.height * 1.57, size.width * 1.32, size.height * 1.57);
      path.cubicTo(size.width * 1.32, size.height * 1.57, size.width * 1.16,
          size.height * 1.83, size.width * 1.16, size.height * 1.83);
      path.cubicTo(size.width * 1.16, size.height * 1.83, size.width,
          size.height * 2.09, size.width, size.height * 2.09);
      path.cubicTo(size.width, size.height * 2.09, size.width * 0.96,
          size.height * 2.09, size.width * 0.96, size.height * 2.09);
      path.cubicTo(size.width * 0.96, size.height * 2.09, size.width * 0.92,
          size.height * 2.09, size.width * 0.92, size.height * 2.09);
      path.cubicTo(size.width * 0.92, size.height * 2.09, size.width * 0.91,
          size.height * 2.05, size.width * 0.91, size.height * 2.05);
      path.cubicTo(size.width * 0.91, size.height * 2.05, size.width * 0.91,
          size.height * 2.05, size.width * 0.91, size.height * 2.05);
      path.lineTo(size.width, size.height * 2.09);
      path.cubicTo(size.width, size.height * 2.09, size.width * 1.07,
          size.height * 1.97, size.width * 1.16, size.height * 1.82);
      path.cubicTo(size.width * 1.16, size.height * 1.82, size.width * 1.32,
          size.height * 1.57, size.width * 1.32, size.height * 1.57);
      path.cubicTo(size.width * 1.32, size.height * 1.57, size.width * 1.31,
          size.height * 1.46, size.width * 1.31, size.height * 1.46);
      path.cubicTo(size.width * 1.31, size.height * 1.46, size.width * 1.31,
          size.height * 1.36, size.width * 1.31, size.height * 1.36);
      path.cubicTo(size.width * 1.31, size.height * 1.36, size.width * 1.26,
          size.height * 1.36, size.width * 1.26, size.height * 1.36);
      path.cubicTo(size.width * 1.26, size.height * 1.36, size.width * 1.2,
          size.height * 1.36, size.width * 1.2, size.height * 1.36);
      path.cubicTo(size.width * 1.2, size.height * 1.36, size.width * 1.04,
          size.height * 1.65, size.width * 1.04, size.height * 1.65);
      path.cubicTo(size.width * 0.95, size.height * 1.8, size.width * 0.88,
          size.height * 1.94, size.width * 0.88, size.height * 1.94);
      path.cubicTo(size.width * 0.88, size.height * 1.94, size.width * 0.93,
          size.height * 2.08, size.width * 0.93, size.height * 2.09);
      path.cubicTo(size.width * 0.93, size.height * 2.09, size.width * 0.94,
          size.height * 2.09, size.width * 0.96, size.height * 2.09);
      path.cubicTo(size.width * 0.98, size.height * 2.09, size.width,
          size.height * 2.09, size.width, size.height * 2.09);
      path.cubicTo(size.width, size.height * 2.09, size.width,
          size.height * 2.09, size.width, size.height * 2.09);
      canvas.drawPath(path, paint);
    }

    // Path number 5
    if (_segmentOnOff(5)) {
      print(5);
      paint.color = _segmentOnOff(5) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 1.54, size.height * 2.09);
      path.cubicTo(size.width * 1.53, size.height * 2.09, size.width * 1.51,
          size.height * 1.98, size.width * 1.47, size.height * 1.84);
      path.cubicTo(size.width * 1.47, size.height * 1.84, size.width * 1.42,
          size.height * 1.59, size.width * 1.42, size.height * 1.59);
      path.cubicTo(size.width * 1.42, size.height * 1.59, size.width * 1.42,
          size.height * 1.47, size.width * 1.42, size.height * 1.47);
      path.cubicTo(size.width * 1.42, size.height * 1.47, size.width * 1.42,
          size.height * 1.35, size.width * 1.42, size.height * 1.35);
      path.cubicTo(size.width * 1.42, size.height * 1.35, size.width * 1.49,
          size.height * 1.35, size.width * 1.49, size.height * 1.35);
      path.cubicTo(size.width * 1.49, size.height * 1.35, size.width * 1.55,
          size.height * 1.35, size.width * 1.55, size.height * 1.35);
      path.cubicTo(size.width * 1.55, size.height * 1.35, size.width * 1.64,
          size.height * 1.48, size.width * 1.64, size.height * 1.48);
      path.cubicTo(size.width * 1.64, size.height * 1.48, size.width * 1.73,
          size.height * 1.6, size.width * 1.73, size.height * 1.6);
      path.cubicTo(size.width * 1.73, size.height * 1.6, size.width * 1.78,
          size.height * 1.85, size.width * 1.78, size.height * 1.85);
      path.cubicTo(size.width * 1.82, size.height * 1.98, size.width * 1.84,
          size.height * 2.09, size.width * 1.84, size.height * 2.09);
      path.cubicTo(size.width * 1.84, size.height * 2.09, size.width * 1.77,
          size.height * 2.09, size.width * 1.69, size.height * 2.09);
      path.cubicTo(size.width * 1.57, size.height * 2.09, size.width * 1.54,
          size.height * 2.09, size.width * 1.54, size.height * 2.09);
      path.cubicTo(size.width * 1.54, size.height * 2.09, size.width * 1.54,
          size.height * 2.09, size.width * 1.54, size.height * 2.09);
      path.lineTo(size.width * 1.83, size.height * 2.09);
      path.cubicTo(size.width * 1.83, size.height * 2.09, size.width * 1.82,
          size.height * 2.02, size.width * 1.8, size.height * 1.93);
      path.cubicTo(size.width * 1.78, size.height * 1.85, size.width * 1.76,
          size.height * 1.78, size.width * 1.76, size.height * 1.77);
      path.cubicTo(size.width * 1.76, size.height * 1.76, size.width * 1.75,
          size.height * 1.73, size.width * 1.73, size.height * 1.66);
      path.cubicTo(size.width * 1.73, size.height * 1.66, size.width * 1.72,
          size.height * 1.61, size.width * 1.72, size.height * 1.61);
      path.cubicTo(size.width * 1.72, size.height * 1.61, size.width * 1.63,
          size.height * 1.48, size.width * 1.63, size.height * 1.48);
      path.cubicTo(size.width * 1.63, size.height * 1.48, size.width * 1.55,
          size.height * 1.36, size.width * 1.55, size.height * 1.36);
      path.cubicTo(size.width * 1.55, size.height * 1.36, size.width * 1.49,
          size.height * 1.36, size.width * 1.49, size.height * 1.36);
      path.cubicTo(size.width * 1.49, size.height * 1.36, size.width * 1.42,
          size.height * 1.36, size.width * 1.42, size.height * 1.36);
      path.cubicTo(size.width * 1.42, size.height * 1.36, size.width * 1.42,
          size.height * 1.48, size.width * 1.42, size.height * 1.48);
      path.cubicTo(size.width * 1.42, size.height * 1.48, size.width * 1.42,
          size.height * 1.6, size.width * 1.42, size.height * 1.6);
      path.cubicTo(size.width * 1.42, size.height * 1.6, size.width * 1.48,
          size.height * 1.84, size.width * 1.48, size.height * 1.84);
      path.cubicTo(size.width * 1.52, size.height * 1.98, size.width * 1.54,
          size.height * 2.09, size.width * 1.54, size.height * 2.09);
      path.cubicTo(size.width * 1.54, size.height * 2.09, size.width * 1.61,
          size.height * 2.09, size.width * 1.69, size.height * 2.09);
      path.cubicTo(size.width * 1.77, size.height * 2.09, size.width * 1.83,
          size.height * 2.09, size.width * 1.83, size.height * 2.09);
      path.cubicTo(size.width * 1.83, size.height * 2.09, size.width * 1.83,
          size.height * 2.09, size.width * 1.83, size.height * 2.09);
      canvas.drawPath(path, paint);
    }

    // Path number 6
    if (_segmentOnOff(6)) {
      print(6);
      paint.color = _segmentOnOff(6) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 2.06, size.height * 1.92);
      path.cubicTo(size.width * 1.98, size.height * 1.82, size.width * 1.9,
          size.height * 1.73, size.width * 1.9, size.height * 1.73);
      path.cubicTo(size.width * 1.89, size.height * 1.72, size.width * 1.86,
          size.height * 1.68, size.width * 1.82, size.height * 1.64);
      path.cubicTo(size.width * 1.82, size.height * 1.64, size.width * 1.75,
          size.height * 1.55, size.width * 1.75, size.height * 1.55);
      path.cubicTo(size.width * 1.75, size.height * 1.55, size.width * 1.71,
          size.height * 1.45, size.width * 1.71, size.height * 1.45);
      path.cubicTo(size.width * 1.7, size.height * 1.4, size.width * 1.68,
          size.height * 1.36, size.width * 1.68, size.height * 1.36);
      path.cubicTo(size.width * 1.68, size.height * 1.35, size.width * 1.71,
          size.height * 1.35, size.width * 1.74, size.height * 1.35);
      path.cubicTo(size.width * 1.74, size.height * 1.35, size.width * 1.8,
          size.height * 1.35, size.width * 1.8, size.height * 1.35);
      path.cubicTo(size.width * 1.8, size.height * 1.35, size.width * 1.99,
          size.height * 1.55, size.width * 1.99, size.height * 1.55);
      path.cubicTo(size.width * 1.99, size.height * 1.55, size.width * 2.17,
          size.height * 1.75, size.width * 2.17, size.height * 1.75);
      path.cubicTo(size.width * 2.17, size.height * 1.75, size.width * 2.21,
          size.height * 1.91, size.width * 2.21, size.height * 1.91);
      path.cubicTo(size.width * 2.23, size.height * 2, size.width * 2.25,
          size.height * 2.08, size.width * 2.25, size.height * 2.09);
      path.cubicTo(size.width * 2.26, size.height * 2.09, size.width * 2.26,
          size.height * 2.09, size.width * 2.24, size.height * 2.09);
      path.cubicTo(size.width * 2.24, size.height * 2.09, size.width * 2.21,
          size.height * 2.09, size.width * 2.21, size.height * 2.09);
      path.cubicTo(size.width * 2.21, size.height * 2.09, size.width * 2.06,
          size.height * 1.92, size.width * 2.06, size.height * 1.92);
      path.cubicTo(size.width * 2.06, size.height * 1.92, size.width * 2.06,
          size.height * 1.92, size.width * 2.06, size.height * 1.92);
      path.lineTo(size.width * 2.25, size.height * 2.09);
      path.cubicTo(size.width * 2.25, size.height * 2.09, size.width * 2.23,
          size.height * 2.01, size.width * 2.21, size.height * 1.92);
      path.cubicTo(size.width * 2.21, size.height * 1.92, size.width * 2.17,
          size.height * 1.75, size.width * 2.17, size.height * 1.75);
      path.cubicTo(size.width * 2.17, size.height * 1.75, size.width * 2.11,
          size.height * 1.69, size.width * 2.11, size.height * 1.69);
      path.cubicTo(size.width * 2.08, size.height * 1.66, size.width * 2.05,
          size.height * 1.63, size.width * 2.05, size.height * 1.63);
      path.cubicTo(size.width * 2.05, size.height * 1.62, size.width * 2.04,
          size.height * 1.61, size.width * 2.04, size.height * 1.61);
      path.cubicTo(size.width * 2.03, size.height * 1.61, size.width * 1.98,
          size.height * 1.55, size.width * 1.91, size.height * 1.48);
      path.cubicTo(size.width * 1.91, size.height * 1.48, size.width * 1.79,
          size.height * 1.36, size.width * 1.79, size.height * 1.36);
      path.cubicTo(size.width * 1.79, size.height * 1.36, size.width * 1.74,
          size.height * 1.36, size.width * 1.74, size.height * 1.36);
      path.cubicTo(size.width * 1.71, size.height * 1.36, size.width * 1.69,
          size.height * 1.36, size.width * 1.69, size.height * 1.36);
      path.cubicTo(size.width * 1.69, size.height * 1.36, size.width * 1.7,
          size.height * 1.4, size.width * 1.72, size.height * 1.46);
      path.cubicTo(size.width * 1.72, size.height * 1.46, size.width * 1.76,
          size.height * 1.55, size.width * 1.76, size.height * 1.55);
      path.cubicTo(size.width * 1.76, size.height * 1.55, size.width * 1.82,
          size.height * 1.63, size.width * 1.82, size.height * 1.63);
      path.cubicTo(size.width * 1.86, size.height * 1.67, size.width * 1.89,
          size.height * 1.71, size.width * 1.9, size.height * 1.72);
      path.cubicTo(size.width * 1.91, size.height * 1.73, size.width * 1.97,
          size.height * 1.8, size.width * 2.05, size.height * 1.89);
      path.cubicTo(size.width * 2.13, size.height * 1.98, size.width * 2.2,
          size.height * 2.06, size.width * 2.21, size.height * 2.07);
      path.cubicTo(size.width * 2.22, size.height * 2.09, size.width * 2.22,
          size.height * 2.09, size.width * 2.23, size.height * 2.09);
      path.cubicTo(size.width * 2.24, size.height * 2.09, size.width * 2.25,
          size.height * 2.09, size.width * 2.25, size.height * 2.09);
      path.cubicTo(size.width * 2.25, size.height * 2.09, size.width * 2.25,
          size.height * 2.09, size.width * 2.25, size.height * 2.09);
      canvas.drawPath(path, paint);
    }

    // Path number 7
    if (_segmentOnOff(7)) {
      print(7);
      paint.color = _segmentOnOff(7) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 0.59, size.height * 1.27);
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

    // Path number 8
    if (_segmentOnOff(8)) {
      paint.color = _segmentOnOff(8) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 1.49, size.height * 1.33);
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

    // Path number 9
    if (_segmentOnOff(9)) {
      paint.color = _segmentOnOff(9) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 0.35, size.height * 1.16);
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

    // Path number 10
    if (_segmentOnOff(10)) {
      paint.color = _segmentOnOff(10) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 2.19, size.height * 1.09);
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

    // Path number 11
    if (_segmentOnOff(11)) {
      paint.color = _segmentOnOff(11) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 1.05, size.height * 1.05);
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

    // Path number 13
    if (_segmentOnOff(12)) {
      paint.color = _segmentOnOff(12) ? foreground.withOpacity(0) : background;
      path = Path();
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

    // Path number 13
    if (_segmentOnOff(13)) {
      paint.color = _segmentOnOff(13) ? foreground.withOpacity(0) : background;
      path = Path();
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

    // Path number 14
    if (_segmentOnOff(14)) {
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

    // Path number 15
    if (_segmentOnOff(15)) {
      paint.color = _segmentOnOff(15) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 0.37, size.height * 0.22);
      path.cubicTo(size.width * 0.3, size.height * 0.18, size.width / 4,
          size.height * 0.14, size.width / 4, size.height * 0.14);
      path.cubicTo(size.width * 0.24, size.height * 0.14, size.width * 0.26,
          size.height * 0.13, size.width * 0.29, size.height * 0.1);
      path.cubicTo(size.width * 0.29, size.height * 0.1, size.width * 0.34,
          size.height * 0.07, size.width * 0.34, size.height * 0.07);
      path.cubicTo(size.width * 0.34, size.height * 0.07, size.width * 0.77,
          size.height * 0.07, size.width * 0.77, size.height * 0.07);
      path.cubicTo(size.width * 1.17, size.height * 0.07, size.width * 1.19,
          size.height * 0.07, size.width * 1.2, size.height * 0.07);
      path.cubicTo(size.width * 1.2, size.height * 0.08, size.width * 1.25,
          size.height * 0.28, size.width * 1.25, size.height * 0.29);
      path.cubicTo(size.width * 1.25, size.height * 0.29, size.width * 1.22,
          size.height * 0.29, size.width * 0.87, size.height * 0.29);
      path.cubicTo(size.width * 0.87, size.height * 0.29, size.width * 0.49,
          size.height * 0.29, size.width * 0.49, size.height * 0.29);
      path.cubicTo(size.width * 0.49, size.height * 0.29, size.width * 0.37,
          size.height * 0.22, size.width * 0.37, size.height * 0.22);
      path.cubicTo(size.width * 0.37, size.height * 0.22, size.width * 0.37,
          size.height * 0.22, size.width * 0.37, size.height * 0.22);
      path.lineTo(size.width * 1.24, size.height * 0.28);
      path.cubicTo(size.width * 1.24, size.height * 0.27, size.width * 1.19,
          size.height * 0.08, size.width * 1.19, size.height * 0.07);
      path.cubicTo(size.width * 1.19, size.height * 0.07, size.width,
          size.height * 0.07, size.width * 0.76, size.height * 0.07);
      path.cubicTo(size.width * 0.76, size.height * 0.07, size.width * 0.34,
          size.height * 0.07, size.width * 0.34, size.height * 0.07);
      path.cubicTo(size.width * 0.34, size.height * 0.07, size.width * 0.3,
          size.height * 0.11, size.width * 0.3, size.height * 0.11);
      path.cubicTo(size.width * 0.3, size.height * 0.11, size.width / 4,
          size.height * 0.14, size.width / 4, size.height * 0.14);
      path.cubicTo(size.width / 4, size.height * 0.14, size.width * 0.37,
          size.height / 5, size.width * 0.37, size.height / 5);
      path.cubicTo(size.width * 0.37, size.height / 5, size.width * 0.49,
          size.height * 0.28, size.width * 0.49, size.height * 0.28);
      path.cubicTo(size.width * 0.49, size.height * 0.28, size.width * 0.86,
          size.height * 0.28, size.width * 0.86, size.height * 0.28);
      path.cubicTo(size.width * 1.19, size.height * 0.28, size.width * 1.24,
          size.height * 0.28, size.width * 1.24, size.height * 0.28);
      path.cubicTo(size.width * 1.24, size.height * 0.28, size.width * 1.24,
          size.height * 0.28, size.width * 1.24, size.height * 0.28);
      canvas.drawPath(path, paint);
    }

    // Path number 16
    if (_segmentOnOff(16)) {
      paint.color = _segmentOnOff(16) ? foreground.withOpacity(0) : background;
      path = Path();
      path.lineTo(size.width * 1.31, size.height * 0.28);
      path.cubicTo(size.width * 1.31, size.height * 0.26, size.width * 1.26,
          size.height * 0.07, size.width * 1.26, size.height * 0.07);
      path.cubicTo(size.width * 1.26, size.height * 0.07, size.width * 1.36,
          size.height * 0.07, size.width * 1.59, size.height * 0.07);
      path.cubicTo(size.width * 1.59, size.height * 0.07, size.width * 1.92,
          size.height * 0.07, size.width * 1.92, size.height * 0.07);
      path.cubicTo(size.width * 1.92, size.height * 0.07, size.width * 1.97,
          size.height * 0.1, size.width * 1.97, size.height * 0.1);
      path.cubicTo(size.width * 2, size.height * 0.12, size.width * 2.02,
          size.height * 0.14, size.width * 2.02, size.height * 0.14);
      path.cubicTo(size.width * 2.02, size.height * 0.14, size.width * 1.98,
          size.height * 0.18, size.width * 1.93, size.height * 0.22);
      path.cubicTo(size.width * 1.93, size.height * 0.22, size.width * 1.85,
          size.height * 0.29, size.width * 1.85, size.height * 0.29);
      path.cubicTo(size.width * 1.85, size.height * 0.29, size.width * 1.58,
          size.height * 0.29, size.width * 1.58, size.height * 0.29);
      path.cubicTo(size.width * 1.58, size.height * 0.29, size.width * 1.32,
          size.height * 0.29, size.width * 1.32, size.height * 0.29);
      path.cubicTo(size.width * 1.32, size.height * 0.29, size.width * 1.31,
          size.height * 0.28, size.width * 1.31, size.height * 0.28);
      path.cubicTo(size.width * 1.31, size.height * 0.28, size.width * 1.31,
          size.height * 0.28, size.width * 1.31, size.height * 0.28);
      path.lineTo(size.width * 1.92, size.height * 0.22);
      path.cubicTo(size.width * 1.97, size.height * 0.18, size.width * 2,
          size.height * 0.15, size.width * 2.01, size.height * 0.14);
      path.cubicTo(size.width * 2.01, size.height * 0.14, size.width * 2,
          size.height * 0.13, size.width * 1.96, size.height * 0.11);
      path.cubicTo(size.width * 1.96, size.height * 0.11, size.width * 1.92,
          size.height * 0.07, size.width * 1.92, size.height * 0.07);
      path.cubicTo(size.width * 1.92, size.height * 0.07, size.width * 1.59,
          size.height * 0.07, size.width * 1.59, size.height * 0.07);
      path.cubicTo(size.width * 1.59, size.height * 0.07, size.width * 1.27,
          size.height * 0.07, size.width * 1.27, size.height * 0.07);
      path.cubicTo(size.width * 1.27, size.height * 0.07, size.width * 1.27,
          size.height * 0.08, size.width * 1.27, size.height * 0.08);
      path.cubicTo(size.width * 1.27, size.height * 0.09, size.width * 1.29,
          size.height * 0.13, size.width * 1.3, size.height * 0.19);
      path.cubicTo(size.width * 1.3, size.height * 0.19, size.width * 1.32,
          size.height * 0.28, size.width * 1.32, size.height * 0.28);
      path.cubicTo(size.width * 1.32, size.height * 0.28, size.width * 1.58,
          size.height * 0.28, size.width * 1.58, size.height * 0.28);
      path.cubicTo(size.width * 1.58, size.height * 0.28, size.width * 1.85,
          size.height * 0.28, size.width * 1.85, size.height * 0.28);
      path.cubicTo(size.width * 1.85, size.height * 0.28, size.width * 1.92,
          size.height * 0.22, size.width * 1.92, size.height * 0.22);
      path.cubicTo(size.width * 1.92, size.height * 0.22, size.width * 1.92,
          size.height * 0.22, size.width * 1.92, size.height * 0.22);
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
