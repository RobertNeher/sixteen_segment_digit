import 'package:flutter/material.dart';
import 'package:test/display_test.dart';

void main() {
  runApp(MyDigitShow());
}

class MyDigitShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Digit Show',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: DisplayTest(),
        ));
  }
}
