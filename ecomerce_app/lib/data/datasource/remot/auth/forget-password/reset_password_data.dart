import 'package:ecomerce_app/core/class/crud.dart';
import 'package:ecomerce_app/linkapi.dart';

class Reset_password_data {
  Crud crud; 
 Reset_password_data(this.crud);
  
  postdata(String password,  String email) async {
    var response =await crud.Postdata(Applink.reset_password_forgetPass, {
      "user_password"    : password ,
      
      "user_email"    : email,
    });
    response.fold((left) =>left, (right) => right);
  }
}