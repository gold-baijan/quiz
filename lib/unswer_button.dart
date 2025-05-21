import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function(String answer) callback;

  const AnswerButton({super.key, required this.answer, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback(answer);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.maxFinite, 50),
        textStyle: const TextStyle(fontSize: 25),
      ),
      child: Text(answer, textAlign: TextAlign.center),
    );
  }
}
