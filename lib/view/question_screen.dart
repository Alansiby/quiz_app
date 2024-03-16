// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:quiz_app/controller/question_screen_controller.dart';
import 'package:quiz_app/core/constants/color_constants.dart';
import 'package:quiz_app/view/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswersCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstants.darkGrey),
              child: Text(
                QuestionScreenController
                    .flutterQuestions[currentQuestionIndex].question,
                style:
                    TextStyle(color: ColorConstants.primaryWhite, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
                children: List.generate(
                    QuestionScreenController
                        .flutterQuestions[currentQuestionIndex]
                        .optionsList
                        .length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = index;

                              if (selectedAnswerIndex ==
                                  QuestionScreenController
                                      .flutterQuestions[currentQuestionIndex]
                                      .correctAnswerIndex) {
                                rightAnswersCount++;
                              }
                              print(rightAnswersCount);

                              setState(() {});
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              // padding: EdgeInsets.symmetric(
                              //     horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  // border: Border.all(color: buldColor(index)),
                                  // borderRadius: BorderRadius.circular(10),
                                  // color: Colors.transparent
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: (index ==
                                                  QuestionScreenController
                                                      .flutterQuestions[
                                                          currentQuestionIndex]
                                                      .correctAnswerIndex &&
                                              selectedAnswerIndex != null)
                                          ? ColorConstants.primaryGreen
                                          : selectedAnswerIndex == index
                                              ? selectedAnswerIndex ==
                                                      QuestionScreenController
                                                          .flutterQuestions[
                                                              currentQuestionIndex]
                                                          .correctAnswerIndex
                                                  ? ColorConstants.primaryGreen
                                                  : Colors.red
                                              : ColorConstants.primaryGrey)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      QuestionScreenController
                                          .flutterQuestions[
                                              currentQuestionIndex]
                                          .optionsList[index],
                                      style: TextStyle(
                                          color: ColorConstants.primaryWhite,
                                          fontSize: 18),
                                    ),
                                    Icon(
                                      buildIcons(index),
                                      color: buldColor(index),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ))),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                if (currentQuestionIndex <
                    QuestionScreenController.flutterQuestions.length - 1) {
                  currentQuestionIndex++;
                  selectedAnswerIndex = null;
                  setState(() {});
                } else {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultScreen(
                                rightAnswerCount: rightAnswersCount,
                              )));
                }
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.primaryBlue),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: ColorConstants.primaryWhite, fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color buldColor(int index) {
    if (index ==
            QuestionScreenController
                .flutterQuestions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Colors.green;
    } else if (selectedAnswerIndex == index) {
      if (selectedAnswerIndex ==
          QuestionScreenController
              .flutterQuestions[currentQuestionIndex].correctAnswerIndex) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return ColorConstants.primaryGrey;
    }
  }

  IconData? buildIcons(int index) {
    if (index ==
            QuestionScreenController
                .flutterQuestions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (selectedAnswerIndex == index) {
      if (selectedAnswerIndex !=
          QuestionScreenController
              .flutterQuestions[currentQuestionIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}
