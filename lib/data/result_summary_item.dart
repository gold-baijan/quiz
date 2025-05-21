class ResultSummaryItem {
  final String question;
  final String userAnswer;
  final String correctAnswer;

  ResultSummaryItem({
    required this.question,
    required this.userAnswer,
    required this.correctAnswer,
  });

  bool get isAnswerCorrect => userAnswer == correctAnswer;
}
