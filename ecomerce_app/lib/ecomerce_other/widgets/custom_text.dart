import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text  ;
  final double fontSize ;
  final Color color ;
  final Alignment alignment;
  const CustomText({super.key,  this.fontSize = 18, 
  required this.text, 
   this.color =Colors.black, 
  this.alignment = Alignment.topLeft});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child:Text(text,
                 style: TextStyle(
                  color: color,
                  fontSize: fontSize),), 
    );
  }
}