import 'package:flutter/material.dart';
import 'package:first_try/gradient_container.dart';
// import 'package:first_try/styled_text.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 33, 5, 109),
           Color.fromARGB(255, 68, 21, 149)
        ),
      ),
    ),
  );
}

