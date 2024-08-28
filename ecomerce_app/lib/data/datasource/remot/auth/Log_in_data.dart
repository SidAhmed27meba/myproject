import 'package:ecomerce_app/core/class/crud.dart';
import 'package:ecomerce_app/linkapi.dart';

class Login_data {
  Crud crud; 
  Login_data(this.crud);
  
  postdata(String email,String password) async {
    var response =await crud.Postdata(Applink.login_link, {
      "user_email"    : email,
      "user_password" : password 
    });
    response.fold((left) =>left, (right) => right);
  }
}