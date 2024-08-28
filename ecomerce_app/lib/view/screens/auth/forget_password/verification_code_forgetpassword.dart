import 'package:ecomerce_app/controler/forgetpassword/verifeycontroler.dart';
import 'package:ecomerce_app/core/class/handling_data_view.dart';
//import 'package:ecomerce_app/controler/verifeycontrolernewpass.dart';
import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_body_text.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    verfycode_controler controler_verfy = Get.put(verfycode_controler());
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification Code",style:Theme.of(context).textTheme.headline1 ),
        centerTitle: true,
        backgroundColor: App_color.white,
      ),
      body: GetBuilder<verfycode_controler>(builder:(controller) => 
       Handlingdata_request(statusRequest: controler_verfy.statusRequest,
       widget:Container(
        //margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top:20  ),
        child: ListView(
          children: [
            
            custom_title(title: "Check code",),

            SizedBox(height: 10,),

            custom_bodytext(text_body: "Please Enter The Digit Code Sent To mebasid94@gmail.com",),

                OtpTextField(
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            controler_verfy.Cheking_Code_and_gotonewpassword(verificationCode);
        }, // end onSubmit
    ),

     
          ],
        )
      ),
       )
      
      ,)
      
      
      
       
    );
  }
}