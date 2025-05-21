import 'package:flutter/material.dart';
import 'package:flutter_quiz_/data/quiz_question_model.dart';
import 'package:flutter_quiz_/data/result_summary_item.dart';
import 'package:flutter_quiz_/result_summary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> answers; // ["answer1", ]
  final List<QuizQuestionModel> questions; // ["Question1", ]
  final void Function() onRestart;

  const ResultScreen({
    super.key,
    required this.answers,
    required this.questions,
    required this.onRestart,
  });

  int get questionsNumber => questions.length;

  int get correctAnswerNumber {
    int count = 0;
    for (int i = 0; i < answers.length; i++) {
      if (answers[i] == questions[i].answers[0]) {
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 40,
        children: [
          // Info text
          Text(
            "Вы ответили правильно на $correctAnswerNumber из $questionsNumber вопросов",
            style: const TextStyle(color: Colors.white, fontSize: 25),
            textAlign: TextAlign.center,
          ),

          // Quiz Summary
          Expanded(
            child: ResultSummary(
              data: List.generate(answers.length, (index) {
                return ResultSummaryItem(
                  question: questions[index].question,
                  userAnswer: answers[index],
                  correctAnswer: questions[index].answers[0],
                );
              }),
            ),
          ),

          // Restart button
          TextButton.icon(
            onPressed: onRestart,
            label: const Text(
              "Перезапустить Quiz!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            icon: const Icon(Icons.refresh, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
