
//import 'package:ecomerce_app/core/constant/color.dart';
//import 'package:ecomerce_app/data/datasource/static/dataonbo.dart';
import 'package:ecomerce_app/controler/onboardingcontroler.dart';
import 'package:ecomerce_app/view/widget/widget_of_onboarding/custtombutton.dart';
import 'package:ecomerce_app/view/widget/widget_of_onboarding/doot.dart';
import 'package:ecomerce_app/view/widget/widget_of_onboarding/sliderpageview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Onboarding extends StatelessWidget {
   Onboarding({super.key});
  
  @override
  Widget build(BuildContext context) {
    Get.put(Onboardingcontroler());
    return Scaffold(
      body:    Container(
        padding: EdgeInsets.only(bottom: 35),
        child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Sliderpageview()
              ),
              Expanded(
                flex: 1,
                child: Dootcontrole()
                 ),
        
        
                 //SizedBox(height: 40,),
                 Custombuton()    
            ],
          ),
      ),
        
      
    );
  }
}