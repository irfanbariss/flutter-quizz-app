import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final totalCorrectAnswers = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              totalCorrectAnswers == totalQuestions
                  ? 'ACE!'
                  : totalCorrectAnswers == 0
                      ? 'OOPS..'
                      : '',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: totalCorrectAnswers == 0
                    ? Colors.red
                    : totalCorrectAnswers == totalQuestions
                        ? const Color.fromARGB(255, 32, 245, 4)
                        : null,
              ),
            ),
            Text(
              'You answered $totalCorrectAnswers of $totalQuestions questions correctly!',
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 239, 182),
                fontSize: 21,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                label: const Text('Restart Quiz!'),
                icon: const Icon(Icons.refresh))
          ],
        ),
      ),
    );
  }
}
