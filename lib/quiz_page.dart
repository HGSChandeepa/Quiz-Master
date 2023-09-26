import 'package:flutter/material.dart';
import 'data/question_data.dart';

class QuizPage extends StatefulWidget {
  final void Function(String answer, int index) storeAnswers;
  final void Function() checkForLastPage;

  QuizPage({
    super.key,
    required this.storeAnswers,
    required this.checkForLastPage,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestion = 0;
  bool answerSelected = false;
  String selectedAnswer = '';

  // Go to the next question.
  void newQuestion() {
    setState(() {
      widget.checkForLastPage();
      if (currentQuestion < allQuestions.length - 1 && answerSelected) {
        currentQuestion++;
      }
      answerSelected = false;
    });
  }

  // Go to the previous question.
  void prevQuestion() {
    setState(() {
      if (currentQuestion > 0) {
        currentQuestion--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Question ${currentQuestion + 1} of ${allQuestions.length}'),
            Text(allQuestions[currentQuestion].question),
            // Mapping the answers.
            ...allQuestions[currentQuestion].answers.map(
                  (e) => TextButton(
                    onPressed: () {
                      answerSelected = true;
                      widget.storeAnswers(e, currentQuestion);
                      setState(() {
                        //change the color of the button of the selected answer
                        selectedAnswer = e;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          e,
                          style: TextStyle(
                            color: selectedAnswer == e
                                ? Colors.blue
                                : const Color.fromARGB(255, 130, 127, 127),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

            // Go to next question.
            TextButton(
              onPressed: newQuestion,
              child: Text(
                allQuestions.length - 1 == currentQuestion
                    ? 'Finish Quiz'
                    : 'Next Question',
                style: const TextStyle(color: Colors.green),
              ),
            ),

            // Go to previous question.
            TextButton(
              onPressed: prevQuestion,
              child: const Text(
                'Previous Question',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
