import 'package:flutter/material.dart';
import 'package:flutter_hello_world/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: GradientContainer.blue(),
      ),
    ), 
  );
}