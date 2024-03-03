class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffeledAnswers() {
    final shuffledList = List.of(answers);

    shuffledList
        .shuffle(); // getting a copy of original answers list and shuffling it
    return shuffledList;
  }
}
