import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/core/functions/handlingdata_backend.dart';
import 'package:ecomerce_app/data/datasource/remot/auth/forget-password/reset_password_data.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class newpassword_controler extends GetxController{
   TextEditingController password = TextEditingController();
   TextEditingController Re_password = TextEditingController();
   late StatusRequest statusRequest;
   String? email;
   GlobalKey<FormState> formState = GlobalKey<FormState>();
   Reset_password_data reset_password_data = Reset_password_data(Get.find());
  save_and_gotosuccess() async {
    if(password.text != Re_password.text) {
      return Get.defaultDialog(
      title: "warning", middleText: "password not match"
    );
    }
    var formdata = formState.currentState;
    if(formdata!.validate()){
      statusRequest = StatusRequest.Loading; 
      update();
  var response =await  reset_password_data.postdata(password.text, email! );
  statusRequest = handlingdata(response);
   if( statusRequest == StatusRequest.Success){
      if (response['status'] == 'Success'){
              // data_frombackend.addAll(response['data']);
                Get.offNamed(App_rout.success_signUp);
      } else {
      Get.defaultDialog(title: "Warning", middleText: "password not correct");
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
    email = Get.arguments['email'];
    super.onInit();
  }
}