import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dice/gradientContainer.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 150, 2, 53),
          Color.fromARGB(255, 49, 7, 160),
        ),
      ),
    ),
  );
}
