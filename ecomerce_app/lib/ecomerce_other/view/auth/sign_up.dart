import 'package:ecomerce_app/ecomerce_other/constance.dart';
import 'package:ecomerce_app/ecomerce_other/widgets/custom_button.dart';
import 'package:ecomerce_app/ecomerce_other/widgets/custom_text.dart';
import 'package:ecomerce_app/ecomerce_other/widgets/custometextform.dart';
import 'package:flutter/material.dart';

class Sign_up extends StatelessWidget {
  const Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
             CustomText(fontSize: 30, text: "Sign Up", color: Colors.black),
             SizedBox(height: 10,),

             CustomText(fontSize: 15, text: "Name", color: Colors.grey),

             Custom_Text_Form(hinttext: "enter your name", 
             onSave: (val){}, 
             validat: (val){}),

             SizedBox(height: 10,),

            CustomText(fontSize: 15, text: "Email", color: Colors.grey),

            Custom_Text_Form(hinttext: "enter email", 
             onSave: (val){}, 
             validat: (val){}),

             SizedBox(height: 10,),

             CustomText(fontSize: 15, text: "password", color: Colors.grey),

             Custom_Text_Form(hinttext: "enter password", 
             onSave: (val){}, 
             validat: (val){}),

              SizedBox(height: 20,),

              Custom_button(text: "Sign Up",onPressed: (){},)
          ],
        ),
      ),
    );
  }
}