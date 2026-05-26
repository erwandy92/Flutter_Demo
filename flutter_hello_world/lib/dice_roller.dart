import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore means that the class is private and can only be used within this file. It is a common convention in Dart to prefix private classes with an underscore.
class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var rolledNumber = Random().nextInt(6) + 1; // Generate a random number between 1 and 6
    setState(() {
      activeDiceImage = 'assets/images/dice-$rolledNumber.png';
    });
    // activeDiceImage = 'assets/images/dice-2.png';
  }

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage, 
              width: 200, 
              height: 200,
            ),
            const SizedBox(height: 30), // Add some spacing between the image and the button
            TextButton(
              onPressed: rollDice, 
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 60, right: 60),
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              child: const Text('Roll Dice!'),
            ),
          ]
        );
  }
}