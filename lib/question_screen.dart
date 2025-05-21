// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_quiz_/data/quiz_question_model.dart';
import 'package:flutter_quiz_/unswer_button.dart';

class QuestionScreen extends StatelessWidget {
  final QuizQuestionModel questionModel;
  final void Function(String answer) onAnswered;

  const QuestionScreen({
    required this.questionModel,
    required this.onAnswered,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questionModel.question,
            style: const TextStyle(color: Colors.white70, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          Column(
            spacing: 20,
            children: _buildAnswerButtons(questionModel.shuffledAnswers),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildAnswerButtons(List<String> answers) {
    List<Widget> answerButtons = [];
    for (int i = 0; i < answers.length; i++) {
      answerButtons.add(AnswerButton(answer: answers[i], callback: onAnswered));
    }
    return answerButtons;
  }
}
