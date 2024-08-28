import 'package:ecomerce_app/repeat_ecommerce/data_1/static/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding_rep_control extends GetxController{
  int currentpage = 0;
  int initial_page = 0;
   PageController pagecontroler = PageController() ;
  next(){
    currentpage++;
    if(currentpage > data_onboarding.length - 1 ){
     Get.offAllNamed("login");
    } else{
      pagecontroler.animateToPage(currentpage, duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
   
  }

  back(){
   if(currentpage > 0){
    pagecontroler.animateToPage(0, duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
     //Get.offAllNamed("back");
   
   }
  }

  skip(){
   Get.offAllNamed("skip");
  }

  onpagechanged(index){
   currentpage = index;
   update();
  }
} 