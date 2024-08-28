import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/core/functions/handlingdata_backend.dart';
import 'package:ecomerce_app/data/datasource/remot/auth/forget-password/check-email_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Check_email_controler extends GetxController{
  TextEditingController email = TextEditingController();
   GlobalKey<FormState> formState = GlobalKey<FormState>();
   Check_email_forgetpass_data check_email_forgetpass_data = Check_email_forgetpass_data(Get.find());
   late StatusRequest statusRequest;
  cheking_email_and_gotoverfycode() async {
     var formdata = formState.currentState;
     if(formdata!.validate()){
      statusRequest = StatusRequest.Loading; 
      update();
  var response =await check_email_forgetpass_data.postdata(email.text,  );
  statusRequest = handlingdata(response);
   if( statusRequest == StatusRequest.Success){
      if (response['status'] == 'Success'){
              // data_frombackend.addAll(response['data']);
               Get.offNamed(App_rout.verify_code,arguments: {
                 'email' : email.text,
               });
      } else {
      Get.defaultDialog(title: "Warning", middleText: "you don't have an account already");
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
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}