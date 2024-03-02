import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opacity(
        //   opacity: 0.7,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ), Opacity is performance intensive so avoid using it like this
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(141, 244, 67,
              54), // using opacity by selecting transparent colors is a better way.
        ),
        const SizedBox(height: 60),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 21,
          ),
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            // backgroundColor: Colors.red,
            side: const BorderSide(color: Colors.white),
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          label:
              const Text('Start Quiz'), // child is now label since we add .icon
          icon: const Icon(
            Icons.arrow_circle_right_outlined,
            size: 28,
          ),
        )
      ],
    );
  }
}
