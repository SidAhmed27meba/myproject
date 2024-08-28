import 'package:ecomerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class Button_auth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Button_auth({super.key, required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
              
              textColor: App_color.white,
              color: App_color.red,
              onPressed: onPressed,
              child: Text(text),
              ),
    );
  }
}

