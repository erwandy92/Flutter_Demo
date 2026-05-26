import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); //to avoid creating a new instance of Random every time we roll the dice, we can create a single instance and reuse it. This is more efficient and also allows us to maintain the state of the random number generator if needed.

//Extend StatefulWidget instead of StatelessWidget because we need to maintain the state of the dice roll and update the UI accordingly.
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// As we use StatefulWidget, we need to create a State class that will hold the state of the widget and handle the logic for rolling the dice and updating the UI. The State class is private (indicated by the underscore) because it should only be used within this file and not exposed to other parts of the application.
// underscore means that the class is private and can only be used within this file. It is a common convention in Dart to prefix private classes with an underscore.
class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // Generate a random number between 1 and 6
    });
    // activeDiceImage = 'assets/images/dice-2.png';
  }

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
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