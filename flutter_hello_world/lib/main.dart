import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                  const Color.fromARGB(255, 58, 145, 61),
                  Colors.blue
                ], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight
            ),
          ),
        ),
      ),
    ), 
  );
}