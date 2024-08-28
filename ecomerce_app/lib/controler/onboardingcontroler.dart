import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/core/services/services_ecomerce.dart';

import 'package:ecomerce_app/data/datasource/static/dataonbo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboardingcontroler extends GetxController{
  
  int curentpage = 0; 
  late PageController pageController ;
  Services_ecom services_ecom = Get.find();
  next(){
    curentpage++;
    if(curentpage > Dataonbo.length - 1){    
     services_ecom.sharedPref.setString("step", "1");  
     Get.offAllNamed(App_rout.Login); 
    } else{
     pageController.animateToPage(curentpage, duration: Duration(microseconds: 900), curve: Curves.easeInOut);
    }
   
  }

  pagechanged(index){
   curentpage = index;
   update();
  }

  @override
  void onInit() {
    pageController =PageController();
    super.onInit();
  }
} 