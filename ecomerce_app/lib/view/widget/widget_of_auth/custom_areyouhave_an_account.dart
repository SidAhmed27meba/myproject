import 'package:ecomerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class Textareyouhave_an_account extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function()? onPressed;
  const Textareyouhave_an_account({super.key, required this.text1, required this.text2,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text1),
                  TextButton(onPressed: onPressed, child: Text(text2,
                  style: TextStyle(color: App_color.red,fontWeight: FontWeight.bold),))
                ],
              ),
    );
  }
}
