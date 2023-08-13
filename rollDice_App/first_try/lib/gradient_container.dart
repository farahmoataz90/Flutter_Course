import 'package:flutter/material.dart';
// import 'package:first_try/styled_text.dart';
import 'package:first_try/dice_roller.dart';

//variables
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//the beginning of the class

class GradientContainer extends StatelessWidget
{
  //constructor
  const GradientContainer(this.color1,this.color2,{super.key});

  //refers to the variable in the constructor
  final Color color1;
  final Color color2;

  //another constructor function
 const GradientContainer.purple({super.key}) : 
   color1=Colors.deepPurple ,
   color2=Colors.white24 ;


  

  @override
  Widget build(context)
  {
    
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1,color2],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: DiceRoller()
          ),
        );
  }
}













// class GradientContainer extends StatelessWidget
// {
//   //constructor
//   const GradientContainer({super.key,required this.colors});
//   final List<Color> colors;

//   @override
//   Widget build(context)
//   {
    
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin: startAlignment,
//               end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: styledText('hello world'),
//           ),
//         );
//   }
// }