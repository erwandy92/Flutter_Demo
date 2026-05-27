import 'package:flutter/material.dart';
import 'package:flutter_advbasic_quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 16, 3, 114), 
                Colors.indigo
              ],
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight
            ),
          ),
          child: const StartScreen()
          )
      )
    )
  );
}