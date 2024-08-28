import 'package:ecomerce_app/controler/forgetpassword/check_email_controler.dart';
import 'package:ecomerce_app/core/class/handling_data_view.dart';

import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/core/functions/valid_fun.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/button_auth.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_text_field.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forget_password extends StatelessWidget {
  const Forget_password({super.key});

  @override
  Widget build(BuildContext context) {
    Check_email_controler controlerforget = Get.put(Check_email_controler());
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget password",style:Theme.of(context).textTheme.headline1 ),
        centerTitle: true,
        backgroundColor: App_color.white,
      ),
      body: GetBuilder<Check_email_controler>(builder:(controller) =>
        Handlingdata_request(statusRequest: controlerforget.statusRequest,
        widget: Container(
        //margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top:20  ),
        child: ListView(
          children: [
            
            custom_title(title: "Check Email",),

            SizedBox(height: 10,),

            
            custom_text_feild(
              validator: (val) {
                  return valid_input(val!, 50, 5, "Email");
                },
              labeltext: "Email",
              hinttext:"Enter your email" ,
              icons:Icons.email_outlined ,
              mycontroler_textfield: controlerforget.email ,
            ),

             SizedBox(height: 20,),

            Button_auth(text: "check",
            onPressed: () {
             controlerforget.cheking_email_and_gotoverfycode();
            },
            ),
 
          ],
        )
      ) ,
        )
        
        ,)
    );
  }
}