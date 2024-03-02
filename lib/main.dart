import 'package:adv_basics/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.orange, Colors.amber),
      ),
    ),
  );
}
