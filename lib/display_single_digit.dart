import 'package:flutter/material.dart';
import 'package:test/sixteen_segment_display.dart';

class DisplayTest extends StatefulWidget {
  const DisplayTest({super.key});

  @override
  State<DisplayTest> createState() => _DisplayTestState();
}

class _DisplayTestState extends State<DisplayTest> {
  static const double MAX_OPACITY = 100;
  static const double MAX_SCALING = 100;
  static const fgColor = Colors.red;
  static const bgColor = Colors.yellowAccent;
  TextEditingController sizeFactor = TextEditingController(text: '1.0');
  TextEditingController symbol = TextEditingController(text: ' ');
  ValueNotifier<String> _symbol = ValueNotifier<String>(' ');
  double opacity = 50;
  double scaling = 100;
  bool decimalPoint = false;
  bool separator = false;

  void _onSubmit(String value) {
    _symbol.value = value.trim();
  }

  // void _setSizeFactor(String value) {
  //   scaling = double.parse(sizeFactor.text);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(children: [
        Text('Opacity:'),
        Slider(
            value: opacity,
            max: MAX_OPACITY,
            divisions: (MAX_OPACITY / 5).round(),
            label: opacity.round().toString(),
            onChanged: (double value) {
              setState(() {
                opacity = value;
              });
            }),
      ]),
      Row(children: [
        Text('Scaling:'),
        Slider(
            value: scaling,
            max: MAX_SCALING,
            divisions: (MAX_SCALING / 5).round(),
            label: scaling.round().toString(),
            onChanged: (double value) {
              setState(() {
                scaling = value;
              });
            }),
      ]),
      Row(children: [
        Text('Seperator:'),
        Checkbox(
            checkColor: Colors.white,
            value: separator,
            onChanged: (bool? value) {
              setState(() {
                separator = value!;
              });
            }),
      ]),
      Row(children: [
        Text('DecimalPoint:'),
        Checkbox(
            checkColor: Colors.white,
            value: decimalPoint,
            onChanged: (bool? value) {
              setState(() {
                decimalPoint = value!;
              });
            }),
      ]),
      TextFormField(
        controller: symbol,
        onFieldSubmitted: _onSubmit,
      ),
      ValueListenableBuilder<String>(
          valueListenable: _symbol,
          builder: (BuildContext context, String value, Widget? child) {
            return SixteenSegmentDisplay(
              foreground: fgColor,
              background: bgColor,
              symbol: value,
              scaleFactor: scaling / MAX_SCALING,
              opacity: opacity / MAX_OPACITY,
              separator: separator,
              decimalPoint: decimalPoint,
            );
          }),
    ])));
  }
}
