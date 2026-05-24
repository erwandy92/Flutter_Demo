import 'package:flutter/material.dart';
import 'package:flutter_hello_world/styled_text.dart';

//Variables for gradient alignment
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});

  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
               Color.fromARGB(255, 58, 145, 61),
              Colors.blue
            ], 
            begin: startAlignment, 
            end: endAlignment
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}