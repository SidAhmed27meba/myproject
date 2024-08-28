import 'package:ecomerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class custtombutton_lang extends StatelessWidget {
   final String namebuton;
   final void Function()? onPressed;
   custtombutton_lang ({super.key, required this.namebuton, this.onPressed});
  
  @override
  
  Widget build(BuildContext context) {
  
    return  Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: MaterialButton(
              onPressed: onPressed,
              child: Text(namebuton),
              color: App_color.red,
              textColor: App_color.white,
              ),
            );

    
  }
}