import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/core/functions/handlingdata_backend.dart';
import 'package:ecomerce_app/data/datasource/remot/auth/verifey_code_data.dart';
//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class verfycode_controlersignup extends GetxController{
    
   String? email;
   late StatusRequest statusRequest;

   Verifey_code_data verifey_code_data = Verifey_code_data(Get.find());
  Cheking_Code_and_gotosuccessignup(String verfycode) async {
    statusRequest = StatusRequest.Loading; 
      update();
  var response =await verifey_code_data.postdata(email!, verfycode);
  statusRequest = handlingdata(response);
   if( statusRequest == StatusRequest.Success){
      if (response['status'] == 'Success'){
              // data_frombackend.addAll(response['data']);
               Get.offNamed(App_rout.success_signUp);
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
