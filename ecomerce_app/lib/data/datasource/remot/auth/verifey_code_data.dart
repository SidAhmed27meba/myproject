
import 'package:ecomerce_app/core/class/crud.dart';
import 'package:ecomerce_app/linkapi.dart';


class Verifey_code_data {
  Crud crud; 
  Verifey_code_data(this.crud);
  
  postdata(String email,String code_verif) async {
    var response =await crud.Postdata(Applink.code_verif_signup_link, {
      "user_email"    : email,
      "user_verfiycode" :   code_verif,   
    });
    response.fold((left) =>left, (right) => right);
  }
}