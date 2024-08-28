import 'package:ecomerce_app/core/class/crud.dart';
import 'package:ecomerce_app/linkapi.dart';


 class Signup_data {
  Crud crud; 
  Signup_data(this.crud);
  
  postdata(String email,String password,String Username,String phone) async {
    var response =await crud.Postdata(Applink.signup_link, {
      "user_name"     : Username,
      "user_email"    : email,
      "user_phone"    : phone,
      "user_password" : password 
    });
    response.fold((left) =>left, (right) => right);
  }
}