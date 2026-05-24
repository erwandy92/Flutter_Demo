import 'package:flutter/material.dart';

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
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}