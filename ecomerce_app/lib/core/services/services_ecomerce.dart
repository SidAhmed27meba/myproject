import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services_ecom extends GetxService{
  late SharedPreferences sharedPref ;

  Future <Services_ecom> init() async {
    sharedPref = await SharedPreferences.getInstance();   
    return this;
  }
}

 initilize_services() {
   Get.putAsync(() => Services_ecom().init() );  
}

