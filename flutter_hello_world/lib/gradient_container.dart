import 'package:flutter/material.dart';
import 'package:flutter_hello_world/styled_text.dart';

//Variables for gradient alignment
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.startColor, this.endColor, {super.key});

  final Color startColor;
  final Color endColor;

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
      child: const Center(
        child: StyledText('Hello World!'),
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