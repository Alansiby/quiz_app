// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/controller/question_screen_controller.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightAnswerCount});
  final int rightAnswerCount;

  @override
  Widget build(BuildContext context) {
    final percentage =
        (rightAnswerCount / QuestionScreenController.flutterQuestions.length) *
            100;
    return Scaffold(
      body: Center(
        child: Text("Your Score is ${percentage.round()}%"),
      ),
    );
  }
}
