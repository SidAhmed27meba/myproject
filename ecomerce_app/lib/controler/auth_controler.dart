import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/core/functions/handlingdata_backend.dart';
import 'package:ecomerce_app/core/services/services_ecomerce.dart';
import 'package:ecomerce_app/data/datasource/remot/auth/Log_in_data.dart';
import 'package:ecomerce_app/data/datasource/remot/auth/sign_up_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

//import 'package:ecomerce_app/ecomerce_other/view/auth/sign_up.dart';
import 'package:get/get.dart';

class Controler_auth extends GetxController{
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isshowerpassword = true;
  late StatusRequest statusRequest;

 Signup_data signup_data = Signup_data(Get.find());
 Login_data login_data = Login_data(Get.find());
List data_frombackend = [];
Services_ecom services_ecom = Get.find();
  Showpassword(){
   isshowerpassword == true ? false : true ;
   update();
  }
  Gotosignup(){
    Get.offNamed(App_rout.Signup);
  }

  Gotosignin(){
    Get.toNamed(App_rout.Login);
  }

  Gotoforgetpass(){
    Get.toNamed(App_rout.Forget_password);
  }

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController Username = TextEditingController();
  TextEditingController phone = TextEditingController();
  
  

  log_in()async{
   var formdata = formState.currentState;
   if(formdata!.validate()){
    statusRequest = StatusRequest.Loading; 
      update();
  var response =await login_data.postdata(email.text, password.text );
  statusRequest = handlingdata(response);
   if( statusRequest == StatusRequest.Success){
      if (response['status'] == 'Success'){
              // data_frombackend.addAll(response['data']);
          services_ecom.sharedPref.setString("id",response["data"]["user_id"]);
          services_ecom.sharedPref.setString("email",response["data"]["user_email "]);
          services_ecom.sharedPref.setString("phone",response["data"]["user_phone "]);
          services_ecom.sharedPref.setString("user_name",response["data"]["user_name"]);
          services_ecom.sharedPref.setString("step","2");
               Get.offNamed(App_rout.Home_page);
      } else {
      Get.defaultDialog(title: "Warning", middleText: "password Or Email  not correct");
                statusRequest = StatusRequest.faileur;
              }
   }
  update();
      
      //Get.delete<Controler_auth>();
    print("valid");
   } else{
    print("not valid");
   }
  }

  Sign_up() async{
     var formdata = formState.currentState;
     if(formdata!.validate()){
      statusRequest = StatusRequest.Loading; 
      update();
  var response =await signup_data.postdata(email.text, password.text, Username.text, phone.text);
  statusRequest = handlingdata(response);
   if( statusRequest == StatusRequest.Success){
      if (response['status'] == 'Success'){
              // data_frombackend.addAll(response['data']);
               Get.offNamed(App_rout.VerifyCode_signup, arguments: {
                'email' : email.text,
              });
      } else {
      Get.defaultDialog(title: "Warning", middleText: "phone Number Or Email Already Exists");
                statusRequest = StatusRequest.faileur;
              }
   }
  update();
      
      //Get.delete<Controler_auth>();
    print("valid");
   } else{
    print("not valid");
   }
    
  }
  

 
  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
     print(value);
     String? token = value;
    }   
    );
    email = TextEditingController();
    password = TextEditingController();
    Username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    Username.dispose();
    phone.dispose();
    super.dispose();
  }
  
}


