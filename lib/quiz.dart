import 'package:flutter/material.dart';
import 'package:flutter_quiz_/data/data.dart';
import 'package:flutter_quiz_/question_screen.dart';
import 'package:flutter_quiz_/resalt_screen.dart';
import 'package:flutter_quiz_/start_screen.dart';

enum ScreenType { startScreen, questionScreen, resultScreen }

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late ScreenType _currentScreen;
  late List<String> _userAnswers;
  late int _currentQuestionIndex;

  // int questionNumber;
  // List<QuizQuestion> questions;

  @override
  void initState() {
    _currentScreen = ScreenType.startScreen;
    _userAnswers = [];
    _currentQuestionIndex = 0;
    super.initState();
  }

  Widget _buildScreen() {
    switch (_currentScreen) {
      case ScreenType.startScreen:
        return StartScreen(
          onButtonPressed: () {
            setState(() {
              _currentScreen = ScreenType.questionScreen;
            });
          },
        );
      case ScreenType.questionScreen:
        return QuestionScreen(
          questionModel: Data.questions[_currentQuestionIndex],
          onAnswered: (String answer) {
            setState(() {
              _userAnswers.add(answer);
              _currentQuestionIndex++;
              if (_currentQuestionIndex == Data.questions.length) {
                _currentScreen = ScreenType.resultScreen;
              }
            });
            print(_userAnswers);
          },
        );
      case ScreenType.resultScreen:
        return ResultScreen(
          answers: _userAnswers,
          questions: Data.questions,
          onRestart: () {
            setState(() {
              _currentQuestionIndex = 0;
              _userAnswers = [];
              _currentScreen = ScreenType.questionScreen;
            });
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 66, 6, 170),
              Color.fromARGB(255, 125, 73, 213),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: _buildScreen(),
      ),
    );
  }
}
