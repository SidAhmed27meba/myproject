import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/core/functions/handlingdata_backend.dart';
import 'package:ecomerce_app/data/datasource/remot/auth/forget-password/verfiy_code_data-forgetPass.dart';
//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class verfycode_controler extends GetxController{
 
  late String verfycode;
  String? email;
  late StatusRequest statusRequest;
  Verify_code_forgetpass_data verify_code_forgetpass_data =Verify_code_forgetpass_data(Get.find());
  Cheking_Code_and_gotonewpassword(String verfycode) async {
     statusRequest = StatusRequest.Loading; 
      update();
  var response =await verify_code_forgetpass_data.postdata(email!, verfycode);
  statusRequest = handlingdata(response);
   if( statusRequest == StatusRequest.Success){
      if (response['status'] == 'Success'){
              // data_frombackend.addAll(response['data']);
               Get.offNamed(App_rout.new_pass,arguments: {
                 'email' : email,
               });
      } else {
      Get.defaultDialog(title: "Warning", middleText: "verfiy code not correct");
                statusRequest = StatusRequest.faileur;
              }
   }
  update();
    
    
    
    
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}