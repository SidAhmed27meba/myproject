import 'package:ecomerce_app/controler/success_controler.dart';
import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/button_auth.dart';
//import 'package:ecomerce_app/view/widget/widget_of_auth/custom_body_text.dart';
//import 'package:ecomerce_app/view/widget/widget_of_auth/custom_title.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Success_signUp extends StatelessWidget {
  const Success_signUp({super.key});

  @override
  Widget build(BuildContext context) {
    Success_controler controler = Get.put(Success_controler());
    return Scaffold(
      appBar: AppBar(
        title: Text("Success",style:Theme.of(context).textTheme.headline1 ),
        centerTitle: true,
        backgroundColor: App_color.white,
      ),
      body: Container(
        //margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top:20  ),
        child: ListView(
          children: [
          Icon(Icons.check_circle_outline,
          size: 100,
          color: App_color.green ,
          ),
          Spacer(),
           // SizedBox(height: 10,),        
           // custom_title(title: ),
           // SizedBox(height: 10,),
            //custom_bodytext(text_body: ),

            Button_auth(onPressed: (){
              controler.success_and_goto_LogIn();
            },
            text: " Go To Log In ",
            ),
            SizedBox(height: 20,),
            
          ],
        )
      ),
    );
  }
}