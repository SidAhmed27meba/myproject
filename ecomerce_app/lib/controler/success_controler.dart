
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:get/get.dart';

class Success_controler extends GetxController{
  

  success_and_goto_LogIn(){
    Get.offNamed(App_rout.Login);
  }
}