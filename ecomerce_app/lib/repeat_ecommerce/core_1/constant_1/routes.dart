import 'package:ecomerce_app/repeat_ecommerce/view_1/screens/auth/login_rep.dart';
import 'package:ecomerce_app/repeat_ecommerce/view_1/screens/auth/sign_up.dart';
import 'package:ecomerce_app/repeat_ecommerce/view_1/screens/onboarding_repeat_ecommerce.dart';
import 'package:flutter/material.dart';

class App_routes{
  
  static Map<String, Widget Function(BuildContext)> route_1 ={
        "login" :(context) => Login_rep(),
        "skip" : (context) => Sign_up_rep(),
        "back" : (context) => Onboarding_repeat_ecommerce()
      };
  
  
}