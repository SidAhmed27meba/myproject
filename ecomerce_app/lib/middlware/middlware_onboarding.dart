
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/core/services/services_ecomerce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onboarding_middlware extends GetMiddleware{
  Services_ecom services_ecom = Get.find();
  @override 
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if(services_ecom.sharedPref.getString("step") == "2") {
      return RouteSettings(name: App_rout.Home_page);
    
  } 
    if(services_ecom.sharedPref.getString("step") == "1") {
      return RouteSettings(name: App_rout.Login);
    
  }
  return null;
}
 
}