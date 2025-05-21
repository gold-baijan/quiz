class QuizQuestionModel {
  final String question;
  final List<String> answers;

  List<String> get shuffledAnswers {
    List<String> answersCopy = List.from(answers);
    answersCopy.shuffle();
    return answersCopy;
  }

  const QuizQuestionModel(this.question, this.answers);
}
