import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() onButtonPressed;

  const StartScreen({required this.onButtonPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // картинка
        Opacity(
          opacity: 0.6,
          child: Image.asset("assets/images/quiz-logo.png", height: 350),
        ),
        const SizedBox(height: 75),
        // текст
        const Text(
          "Учим Flutter на примерах",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),

        const SizedBox(height: 30),

        // кнопка
        OutlinedButton.icon(
          onPressed: onButtonPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          label: const Text("Начать Quiz"),
          icon: const Icon(Icons.arrow_forward, color: Colors.white, size: 25),
        ),
      ],
    );
  }
}
