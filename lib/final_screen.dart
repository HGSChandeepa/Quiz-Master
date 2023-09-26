import 'package:flutter/material.dart';

class FinalScreen extends StatefulWidget {
  final void Function() reStartQuiz;
  FinalScreen({super.key, required this.reStartQuiz});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Final Screen'),
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
    );
  }
}
