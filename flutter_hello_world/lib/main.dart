import 'package:flutter/material.dart';
import 'package:flutter_hello_world/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: GradientContainer(
          Color.fromARGB(255, 58, 145, 61),
          Colors.blue
          
          // Alternative to the above line
          // colors: [
          //   Color.fromARGB(255, 58, 145, 61),
          //   Colors.blue
          // ]
        ),
      ),
    ), 
  );
}