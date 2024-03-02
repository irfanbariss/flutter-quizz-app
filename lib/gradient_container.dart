import 'package:adv_basics/start_page.dart';
import 'package:flutter/material.dart';

const alignmentStart = Alignment.topCenter;
const alignmentEnd = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: alignmentStart,
          end: alignmentEnd,
        ),
      ),
      child: const Center(
        child: StartPage(),
      ),
    );
  }
}
