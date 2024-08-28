
import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/functions/handlingdata_backend.dart';
import 'package:ecomerce_app/data/datasource/remot/test_data.dart';
import 'package:get/get.dart';

class Testcontroler extends GetxController{

Testdata testdata = Testdata(Get.find());
List data_frombackend = [];
late StatusRequest statusRequest;
getdata() async {
  statusRequest = StatusRequest.Loading; 
  var response =await testdata.getdata();
  statusRequest = handlingdata(response);
   if( statusRequest == StatusRequest.Success){
           if (response('status') == 'Success'){
               data_frombackend.addAll(response['data']);
              } else {
                statusRequest = StatusRequest.faileur;
              }
   }
  update();
}

@override
  void onInit() {
    getdata();
    super.onInit();
  }
}