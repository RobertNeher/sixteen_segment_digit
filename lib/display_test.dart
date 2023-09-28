import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test/sixteen_segment_display.dart';

class DisplayTest extends StatefulWidget {
  const DisplayTest({super.key});

  @override
  State<DisplayTest> createState() => _DisplayTestState();
}

class _DisplayTestState extends State<DisplayTest> {
  static const fgColor = Colors.red;
  static const bgColor = Colors.yellowAccent;
  TextEditingController sizeFactor = TextEditingController(text: '1.0');
  double _sizeFactor = 1.0;
  TextEditingController symbol = TextEditingController(text: ' ');
  ValueNotifier<String> _symbol = ValueNotifier<String>(' ');

  void _onSubmit(String value) {
    _symbol.value = value.trim();
  }

  void _setSizeFactor(String value) {
    _sizeFactor = double.parse(sizeFactor.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      TextFormField(
        controller: symbol,
        onFieldSubmitted: _onSubmit,
      ),
      TextFormField(
        controller: sizeFactor,
        onFieldSubmitted: _setSizeFactor,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
      ),
      ValueListenableBuilder<String>(
          valueListenable: _symbol,
          builder: (BuildContext context, String value, Widget? child) {
            return SixteenSegmentDisplay(
                foreground: fgColor,
                background: bgColor,
                symbol: value,
                scaleFactor: _sizeFactor);
          }),
    ])));
  }
}
