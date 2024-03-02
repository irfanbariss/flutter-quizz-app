import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(height: 60),
        const Text.rich(
          TextSpan(
            text: "Learn Flutter the fun way!",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 21),
          ),
        ),
        const SizedBox(height: 60),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            // backgroundColor: Colors.red,
            side: const BorderSide(color: Colors.white),
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          child: const Text('Start Quiz'),
        )
      ],
    );
  }
}
