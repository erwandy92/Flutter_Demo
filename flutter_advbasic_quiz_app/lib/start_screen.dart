import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, color: Colors.white),
          const SizedBox(height: 30), // Add some spacing between the image and the text
          const Text('Welcome to the Quiz!', style: TextStyle(fontSize: 24, color: Colors.white)),
          const SizedBox(height: 30), // Add some spacing between the text and the button
          FilledButton.tonal(
            onPressed: (){},
            style: FilledButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            ),
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}