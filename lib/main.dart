import 'package:flutter/material.dart';
import 'package:test/display_time.dart';

void main() {
  runApp(MyDigitShow());
}

class MyDigitShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Digit Show',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          body: DisplayTime(),
        ));
  }
}
