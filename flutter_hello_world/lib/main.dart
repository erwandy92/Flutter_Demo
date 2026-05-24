import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: GradientContainer(),
      ),
    ), 
  );
}

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});

  @override
  Widget build(context){
    return Container(
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
    );
  }
}