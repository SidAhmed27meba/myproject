import 'package:ecomerce_app/core/services/services_ecomerce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Changelanguage_controler extends GetxController{
   
   Locale? language;

  Services_ecom services_ecom = Get.find();

  initiallanguage(String codelang){
    Locale chengement_lang = Locale(codelang);
    services_ecom.sharedPref .setString("lang", codelang);
    Get.updateLocale(chengement_lang);
  }

  @override
  void onInit() {
     String? initiallang = services_ecom.sharedPref.getString("lang"); 
    if(initiallang == "ar"){
      language = Locale("ar");
    } else if(initiallang == "en") {
      language = Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}

