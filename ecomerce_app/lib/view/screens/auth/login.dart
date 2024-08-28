import 'package:ecomerce_app/controler/auth_controler.dart';
import 'package:ecomerce_app/core/class/handling_data_view.dart';

import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/core/functions/appexit_alert.dart';
import 'package:ecomerce_app/core/functions/valid_fun.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/button_auth.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/button_forgetpassword.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_areyouhave_an_account.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_body_text.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_text_field.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_title.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in",style:Theme.of(context).textTheme.headline1 ),
        centerTitle: true,
        backgroundColor: App_color.white,
      ),
      body: WillPopScope(
         onWillPop: exit_app_alert,
        child: GetBuilder<Controler_auth>(builder:(controller) =>
        Handlingdata_request(statusRequest: controller.statusRequest,
        widget: Container(
        //margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top:20  ),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              Logo_auth(),
              custom_title(title: "Welcome Back",),
          
              SizedBox(height: 10,),
          
              custom_bodytext(text_body: "sign in with your email and password or \n continue with social Media",),
              custom_text_feild(
                validator: (val) {
                  return valid_input(val!, 50, 5, "Email");
                },
                labeltext: "Email",
                hinttext:"Enter your email" ,
                icons:Icons.email_outlined ,
                mycontroler_textfield:controller.email ,
              ),
          
               SizedBox(height: 20,),
          
               GetBuilder<Controler_auth>(builder:(controller) => custom_text_feild(
                validator: (val) {
                   return valid_input(val!, 30, 5, "password");
                },
                obscureText: controller.isshowerpassword,
                onTapicon: () {
                  controller.Showpassword();
                },
                labeltext: "password",
                hinttext:"Enter your password" ,
                icons:Icons.lock_outline ,
                mycontroler_textfield: controller.password ,
              ),),
                 SizedBox(height: 20,),
              Button_forgetpass(text: "Forget password",
              onTap: () {
                controller.Gotoforgetpass();
              },
              ),
          
              Button_auth(text: "Sign In",
              onPressed: () {
               controller.log_in();
              },
              ),
          
              Textareyouhave_an_account(text1: " Don't have an account ? ",
                                        text2: "Sign Up",              
                                        onPressed: () {
                                          controller.Gotosignup();
                                        },  
              )
          
                
          
              
          
          
              
            ],
          ),
        )
      ) ,
        )
        
         , )),
    );
  }
}

