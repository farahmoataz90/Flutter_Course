import 'package:flutter/material.dart';

class styledText extends StatelessWidget
{
  //constructor
  const styledText(this.text,{super.key});

  final String text;//refers to the variable in the constructor

  @override
  Widget build(context)
  {
    return  Text(
             text,
             style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
             fontSize: 28.0,
             ),
            );
  }
}