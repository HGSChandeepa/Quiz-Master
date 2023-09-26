import 'package:flutter/material.dart';

import 'data/question_data.dart';

class FinalScreen extends StatefulWidget {
  final void Function() reStartQuiz;
  final List<String> allAnswers;
  FinalScreen({super.key, required this.reStartQuiz, required this.allAnswers});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  get reStartQuiz => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Final Screen'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Container(
          child: Column(
            children: [
              const Text('Final Screen'),

              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.allAnswers.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Column(children: [
                      Text(widget.allAnswers[index]),
                      Text(allQuestions[index].answer),
                    ]),
                  );
                },
              ),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green[200]),
                ),
                onPressed: widget.reStartQuiz,
                child: const Text(
                  "Restart Quiz",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              //button
            ],
          ),
        ),
      ),
    );
  }
}
