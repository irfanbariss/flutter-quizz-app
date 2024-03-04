import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              // backgroundColor: Colors.red,
              side: const BorderSide(color: Colors.white),
              foregroundColor: Colors.white,
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            label: const Text(
                'Start Quiz'), // child is now label since we add .icon
            icon: const Icon(
              Icons.arrow_circle_right_outlined,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
