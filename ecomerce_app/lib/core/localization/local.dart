import 'package:get/get.dart';

class Launguage implements Translations{
  @override
  
  Map<String, Map<String, String>> get keys => {
    "ar" : {
      "1" : "اختر اللغة"
    },
     
     "en" : {
      "1" : "chose language"       
     } ,

     "fr" : {
      "1" : "selectioné votre langue"
     }
  };
  
}