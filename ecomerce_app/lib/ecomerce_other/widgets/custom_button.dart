
import 'package:ecomerce_app/ecomerce_other/constance.dart';
import 'package:ecomerce_app/ecomerce_other/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
  final String text;
  
  final Function()? onPressed; 
  const Custom_button({super.key, required this.text,  required this.onPressed, });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.all(18),
      child: CustomText(fontSize: 18, 
      text: text, 
      color: Colors.white, 
      alignment: Alignment.center,),
      color: primary_color,
      onPressed: onPressed,
      ),
    );
  }
}