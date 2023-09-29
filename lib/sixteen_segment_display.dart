import 'package:flutter/material.dart';
import 'package:test/digit_painter.dart';

class SixteenSegmentDisplay extends StatefulWidget {
  final double BASE_HEIGHT = 100;
  const SixteenSegmentDisplay(
      {super.key,
      this.background = Colors.red,
      this.foreground = Colors.yellowAccent,
      this.scaleFactor = 1.0,
      this.opacity = 0.5,
      this.separator = false,
      this.decimalPoint = false,
      this.symbol = 'all'});
  final Color foreground;
  final Color background;
  final double scaleFactor;
  final double opacity;
  final bool separator;
  final bool decimalPoint;
  final String symbol;

  @override
  State<SixteenSegmentDisplay> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<SixteenSegmentDisplay> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        scale: widget.scaleFactor,
        child: CustomPaint(
          painter: DigitPainter(
              foreground: widget.foreground,
              background: widget.background,
              symbol: widget.symbol,
              opacity: widget.opacity,
              separator: widget.separator,
              decimalPoint: widget.decimalPoint),
        ));
  }
}
