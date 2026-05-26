import 'package:flutter/material.dart';
import 'package:flutter_hello_world/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        // body: GradientContainer.blue(),
        // Set the body of the Scaffold to be an instance of our GradientContainer widget, passing in the desired start and end colors for the gradient.
        body: GradientContainer(
          Color.fromARGB(255, 4, 41, 100), 
          Colors.blue
        ),
      ),
    ), 
  );
}