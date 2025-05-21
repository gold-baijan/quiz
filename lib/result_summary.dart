import 'package:flutter/material.dart';
import 'package:flutter_quiz_/data/result_summary_item.dart';

class ResultSummary extends StatelessWidget {
  final List<ResultSummaryItem> data;

  const ResultSummary({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(spacing: 20, children: _buildSummaryChildren()),
    );
  }

  List<Widget> _buildSummaryChildren() {
    List<Widget> widgets = [];
    for (int i = 0; i < data.length; i++) {
      bool isAnswerCorrect = data[i].isAnswerCorrect;
      String question = data[i].question;
      String userAnswer = data[i].userAnswer;
      String correctAnswer = data[i].correctAnswer;

      widgets.add(
        Row(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor:
                  isAnswerCorrect ? Colors.greenAccent : Colors.pinkAccent,
              child: Text(
                "${i + 1}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // вопрос - questions
                  Text(
                    question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // ответ пользователя - answers
                  Text(
                    userAnswer,
                    style: TextStyle(
                      color:
                          isAnswerCorrect
                              ? Colors.greenAccent
                              : Colors.pinkAccent,
                      fontSize: 22,
                    ),
                  ),

                  // правильный ответ - questions
                  Text(
                    correctAnswer,
                    style: const TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return widgets;
  }
}
