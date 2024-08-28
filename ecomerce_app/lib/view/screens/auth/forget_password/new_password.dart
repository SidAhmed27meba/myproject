import 'package:ecomerce_app/controler/forgetpassword/newpassword_controler.dart';
import 'package:ecomerce_app/core/class/handling_data_view.dart';

import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/core/functions/valid_fun.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/button_auth.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_body_text.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_text_field.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPass extends StatelessWidget {
  const NewPass({super.key});

  @override
  Widget build(BuildContext context) {
    newpassword_controler controler_newpass = Get.put(newpassword_controler());
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password",style:Theme.of(context).textTheme.headline1 ),
        centerTitle: true,
        backgroundColor: App_color.white,
      ),
      body: GetBuilder<newpassword_controler>(builder:(controller) => 
      Handlingdata_request(statusRequest: controler_newpass.statusRequest,
      widget: Container(
        //margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top:20  ),
        child: ListView(
          children: [
            
            custom_title(title: "New Password",),

            SizedBox(height: 10,),

            custom_bodytext(text_body: "Please Enter new password",),
            custom_text_feild(
              validator: (val) {
                   return valid_input(val!, 30, 5, "password");
                },
                
              labeltext: "password",
              hinttext:"Enter your password" ,
              icons:Icons.lock_outline ,
              mycontroler_textfield: controler_newpass.password ,
            ),

             SizedBox(height: 20,),

             custom_text_feild(
              validator: (val) {
                   return valid_input(val!, 30, 5, "confermer password");
                },
              labeltext: "confermer password",
              hinttext:"Re Enter your password" ,
              icons:Icons.lock_outline ,
              mycontroler_textfield: controler_newpass.Re_password,
            ),
               SizedBox(height: 20,),
           
            Button_auth(text: "Save",
            onPressed: () {
             controler_newpass.save_and_gotosuccess();
            },
            ),

           

              

            


            
          ],
        )
      ),
      )
      
      ,)
    );
  }
}