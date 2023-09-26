import 'package:flutter/material.dart';

class StarterPage extends StatefulWidget {
  //acccept a function
  final Function changeScreen;
  const StarterPage({super.key, required this.changeScreen});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  //flip the screens
  void changeScreen() {
    widget.changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Starter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World!'),
            //button
            TextButton(
              onPressed: changeScreen,
              child: Text('Go to Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
