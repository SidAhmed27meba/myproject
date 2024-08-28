import 'package:ecomerce_app/core/class/crud.dart';
import 'package:ecomerce_app/linkapi.dart';

class Check_email_forgetpass_data {
  Crud crud; 
  Check_email_forgetpass_data(this.crud);
  
  postdata(String email) async {
    var response =await crud.Postdata(Applink.check_email_forgpass, {
      "user_email"    : email,
    });
    response.fold((left) =>left, (right) => right);
  }
}