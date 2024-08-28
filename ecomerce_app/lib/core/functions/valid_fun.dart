import 'package:get/get.dart';

valid_input(String val, int max, int min, String type){
   if(type == "username"){
    if(!GetUtils.isUsername(val)){
     return "not vallid username";
    }
   }
   if(type == "email"){
    if(!GetUtils.isEmail(val)){
     return "not vallid email";
    }
   }
   if(type == "phone"){
    if(!GetUtils.isPhoneNumber(val)){
     return "not vallid phone number";
    }
   }
   if(val.length < min){
    return "value can't be less than $min";
   }
    if(val.length > max){
    return "value can't be larger than $max";
   }
    if(val.isEmpty){
    return "the field is empty";
   }
   
}