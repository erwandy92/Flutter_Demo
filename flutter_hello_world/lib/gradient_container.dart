import 'package:flutter/material.dart';

//Variables for gradient alignment
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.startColor, this.endColor, {super.key});

  GradientContainer.blue({super.key})
      : startColor = const Color.fromARGB(255, 58, 145, 61), endColor = Colors.blue; // Alternative constructor
  
  final Color startColor;
  final Color endColor;
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
  }

  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor], 
          begin: startAlignment, 
          end: endAlignment
        ),
      ),
      child: Center(
        child: Column(
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
        ),
      ),
    );
  }
}

// Alternative to the above code
// class GradientContainer extends StatelessWidget{
//   // const GradientContainer(this.colors, {super.key});
//   const GradientContainer({super.key, required this.colors }); //Alternative to the above line

//   final List<Color> colors;

//   @override
//   Widget build(context){
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors, 
//           begin: startAlignment, 
//           end: endAlignment
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),
//     );
//   }
// }