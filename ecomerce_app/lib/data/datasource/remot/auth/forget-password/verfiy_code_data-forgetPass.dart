import 'package:ecomerce_app/core/class/crud.dart';
import 'package:ecomerce_app/linkapi.dart';

class Verify_code_forgetpass_data {
  Crud crud; 
  Verify_code_forgetpass_data(this.crud);
  
  postdata(String email, String verfycode) async {
    var response =await crud.Postdata(Applink.verifey_code_forgetPass, {
      "user_email"    : email,
      "user_verfiycode" : verfycode,
    });
    response.fold((left) =>left, (right) => right);
  }
}