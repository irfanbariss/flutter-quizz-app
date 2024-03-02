import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_page.dart';
import 'package:flutter/material.dart';

const alignmentStart = Alignment.topCenter;
const alignmentEnd = Alignment.bottomCenter;

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartPage();

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.amber],
              begin: alignmentStart,
              end: alignmentEnd,
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
