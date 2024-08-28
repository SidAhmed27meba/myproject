
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/middlware/middlware_onboarding.dart';
import 'package:ecomerce_app/test.dart';

import 'package:ecomerce_app/view/screens/auth/code_verify_signup.dart';
import 'package:ecomerce_app/view/screens/auth/forget_password/check_email_forgot_password.dart';
import 'package:ecomerce_app/view/screens/auth/login.dart';
import 'package:ecomerce_app/view/screens/auth/forget_password/new_password.dart';
import 'package:ecomerce_app/view/screens/auth/forget_password/sccesse_restpassword.dart';
import 'package:ecomerce_app/view/screens/auth/signup.dart';
import 'package:ecomerce_app/view/screens/auth/success_sign_up.dart';
import 'package:ecomerce_app/view/screens/auth/forget_password/verification_code_forgetpassword.dart';
import 'package:ecomerce_app/view/screens/home.dart';
import 'package:ecomerce_app/view/screens/onboarding.dart';

import 'package:get/get.dart';



List<GetPage<dynamic>>? routes = [
  //Auth
  GetPage(name:App_rout.Testiing, page: () => Testiing(),),
  GetPage(name:App_rout.Login, page: () => Login(),),
  GetPage(name:App_rout.Signup , page: ()=> Signup() ),
  GetPage(name:App_rout.Forget_password , page: ()=> Forget_password() ),
  GetPage(name:App_rout.verify_code , page: ()=> VerifyCode() ),
  GetPage(name:App_rout.new_pass , page: ()=> NewPass() ),
  GetPage(name:App_rout.scssespassword, page: ()=> Sccess_password() ),
  GetPage(name:App_rout.success_signUp , page: ()=> Success_signUp() ),
  GetPage(name:App_rout.VerifyCode_signup , page: ()=> VerifyCode_signup() ),
  //Onboarding
 
  GetPage(name:App_rout.Onboarding , page: ()=> Onboarding(),middlewares: [
    onboarding_middlware()
    ] ),
  //screens 
  GetPage(name:App_rout.Home_page , page: ()=>Home_page() ),
  
];





/*
Map<String, Widget Function(BuildContext)> routes = {
   //Auth
   App_rout.Login : (context) => Login(),
   App_rout.Signup: (context) => Signup(),
   App_rout.Forget_password: (context) =>  Forget_password(),
   App_rout.verify_code: (context) =>  VerifyCode(),
   App_rout.new_pass: (context) =>  NewPass(),
   App_rout.scssespassword : (context) => Sccess_password(),
   
   App_rout.success_signUp : (context) => Success_signUp(),
   App_rout.VerifyCode_signup : (context) => VerifyCode_signup(),
  //Onboarding
   App_rout.Onboarding : (context) => Onboarding(),
};
*/