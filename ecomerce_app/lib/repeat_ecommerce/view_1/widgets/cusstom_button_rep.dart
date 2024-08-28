import 'package:ecomerce_app/repeat_ecommerce/controler_1/onboarding_rep_controler.dart';
import 'package:ecomerce_app/repeat_ecommerce/core_1/constant_1/app_color_repecom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class button_arrow_back_rep extends GetView<Onboarding_rep_control> {


  const button_arrow_back_rep({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: (){
                    controller.back();
                  }, child: Text("back")),
                  Container(
                    
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,                  
                    decoration: BoxDecoration(
                      color: App_color_repecom.purpel,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                        color: App_color_repecom.purpelclair,
                        blurRadius: 5,
                        spreadRadius: 10,
                        offset: Offset(10, 10)
                      )
                      ]
                      ),
                    child:IconButton(onPressed: (){
                      controller.next();
                    }, icon: Icon(Icons.arrow_forward,color: App_color_repecom.white,)) ,
                  )
                ],
              ) ;
  }
}

class Button_skip extends GetView<Onboarding_rep_control> {
  const Button_skip({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
              onPressed: (){
                controller.skip();
              }, child:Text("Skip",textAlign: TextAlign.end,),);
  }
}