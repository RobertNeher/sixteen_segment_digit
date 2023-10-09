import 'dart:async';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:test/sixteen_segment_display.dart';

class DisplayTime extends StatefulWidget {
  const DisplayTime({super.key});

  @override
  State<DisplayTime> createState() => _DisplayTimeState();
}

class _DisplayTimeState extends State<DisplayTime> {
  static const fgColor = Colors.black;
  static const bgColor = Colors.white;
  double opacity = 0.5;
  double scaling = 0.5;
  bool decimalPoint = false;
  bool separator = false;
  DateFormat timeFormat = DateFormat('HH:MM:ss');
  Timer? timer;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String number = timeFormat.format(DateTime.now());
    bool separator = false;
    List<Positioned> display = [];

    for (int i = 0; i < number.length; i++) {
      separator = false; //(i != 0 && i % 3 == 0);
      display.add(Positioned(
          left: 120 + (i * 210),
          top: 0,
          child: SixteenSegmentDisplay(
            foreground: fgColor,
            background: bgColor,
            symbol: number.toString()[i],
            scaleFactor: 0.2,
            opacity: 0.5,
            separator: separator,
            decimalPoint: decimalPoint,
          )));
    }

    return Stack(
      alignment: Alignment.topLeft,
      children: display,
    );
  }
}
