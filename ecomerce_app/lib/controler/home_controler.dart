import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/functions/handlingdata_backend.dart';
import 'package:ecomerce_app/core/services/services_ecomerce.dart';
import 'package:ecomerce_app/data/datasource/remot/home_data.dart';
import 'package:get/get.dart';

class Home_controler extends GetxController{
 Services_ecom services_ecom = Get.find();
 Home_data home_data = Home_data(Get.find());
 late StatusRequest statusRequest;
 List data_frombackend = [];
 List categories = [];
 List itemss = [];
 String? username;
 String? id;
  initialdata(){
   username = services_ecom.sharedPref.getString("user_name");
   id = services_ecom.sharedPref.getString("id");
  }

  getdata() async {
    statusRequest = StatusRequest.Loading; 
      update();
  var response =await home_data.getdata();
  statusRequest = handlingdata(response);
   if( statusRequest == StatusRequest.Success){
      if (response['status'] == 'Success'){
               categories.addAll(response['categoriee']);
               itemss.addAll(response['itemss']);
               //Get.offNamed(App_rout.Testiing);
      } else {
      
                statusRequest = StatusRequest.faileur;
              }
   }
  update();
  }
  
  @override
  void onInit() {
    getdata();
    initialdata();
    super.onInit();
  }
}