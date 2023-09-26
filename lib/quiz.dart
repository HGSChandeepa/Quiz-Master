import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/quiz_page.dart';
import 'package:quiz_app/starter_page.dart';

import 'final_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int staterScreen = 1;
  bool isFinalPage = false;
  //flip the screens

  @override
  void initState() {
    super.initState();
    staterScreen = 1;
  }

  void changeScreen() {
    setState(() {
      staterScreen = 2;
    });
  }

  //user answers
  final List<String> userAnswers = [];

  // store the answer by the user
  void storeAnswer(String answer, int index) {
    setState(() {
      if (userAnswers.length > index) {
        userAnswers[index] = answer;
      } else {
        userAnswers.add(answer);
      }

      printAnswers();
    });
  }

  void checkForLastPage() {
    if (userAnswers.length == allQuestions.length) {
      setState(() {
        isFinalPage = true;
      });
    }
  }

  //print user answers
  void printAnswers() {
    print(userAnswers);
    print(isFinalPage);
  }

  //restart quiz
  void reStartQuiz() {
    setState(() {
      isFinalPage = false;
      userAnswers.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: isFinalPage
            ? FinalScreen(
                reStartQuiz: reStartQuiz,
              )
            : staterScreen == 1
                ? StarterPage(changeScreen: changeScreen)
                : QuizPage(
                    storeAnswers: storeAnswer,
                    checkForLastPage: checkForLastPage,
                  ),
      ),
    );
  }
}
