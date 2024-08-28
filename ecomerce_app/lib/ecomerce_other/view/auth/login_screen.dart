
import 'package:ecomerce_app/ecomerce_other/constance.dart';
import 'package:ecomerce_app/ecomerce_other/widgets/custom_buton_social_media.dart';
import 'package:ecomerce_app/ecomerce_other/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_app/ecomerce_other/widgets/custom_text.dart';
import 'package:ecomerce_app/ecomerce_other/widgets/custometextform.dart';



class Login_screen extends StatelessWidget {
  const Login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Welcome,",
                fontSize: 30,
                color: Colors.black,
                ),

                CustomText(text: "SignUp",
                fontSize: 18,
                color: primary_color,
                )
                  
              ],
            ),
            SizedBox(height: 10,),
            
            CustomText( text: "Sign in to continue",fontSize: 15, color: Colors.grey),

            SizedBox(height: 20,),
            
            CustomText( text: "Email",fontSize: 18, color: Colors.grey),
            
            Custom_Text_Form(hinttext: "enter your email",
            onSave: (val){},
            validat: (val){},
            ),

            SizedBox(height: 20,),

            CustomText( text: "password",fontSize: 18, color: Colors.grey),

            Custom_Text_Form(hinttext: "enter your password",
            onSave: (val){},
            validat: (val){},
            ),
            CustomText(fontSize: 18, text: "Forgot password", color: Colors.black, alignment: Alignment.topRight,),
            Custom_button(text: "Sign In",onPressed: (){},),
            SizedBox(height: 10,),
            CustomText( text: "-OR-", alignment: Alignment.center, ),

            SizedBox(height: 10,),

            Custom_buton_social_media(text: "Sign in with facebook",
            image: "images/fcb_logo.png",
            onPressed: (){},
            ),

            Custom_buton_social_media(text: "Sign in with google",
            image: "images/google.png",
            onPressed: (){
              
            },
            )

            
            
          ],
        ),
      ),
    );
  }
}