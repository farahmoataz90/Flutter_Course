import 'package:flutter/material.dart';
import 'dart:math'; // to generate random numbers 


    final randamizer=Random();

class DiceRoller extends StatefulWidget
{
  //we don't add build method
  //stateful widget always work with 2 classes not 1 class
  //the 2nd class should start with _ in its name .. this means it is private class

   //constructors
    const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() 
  {
   
    
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{

  //variables for the rollDice function
  // var activeImage = 'assets/images/dice-2.png';
    var currentDiceRoll = 2; 
   //our functions 
   void rollDice()
   {
    
    setState(() { //perform any updates...anonymous function
    currentDiceRoll=randamizer.nextInt(6)+1;//1<>6
    
      
    });
    // print('changing image...');
   }


  @override
  Widget build(context) 
  {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice-$currentDiceRoll.png',
                  width: 200,
                ),

                //creates a padding between the image and the button
                const SizedBox(
                  height: 20,
                  ),


                TextButton(onPressed: rollDice,
                 style: TextButton.styleFrom(
                  // padding:const EdgeInsets.only(
                  //   top: 20,
                  //   ),
                  foregroundColor: Colors.white, //change the text color
                 textStyle:const TextStyle(fontSize: 28),
                 ),
                 child:const Text('Roll Dice'),
                 ),
              ],
            )
            ;
  }
}