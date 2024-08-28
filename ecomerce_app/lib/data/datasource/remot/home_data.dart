import 'package:ecomerce_app/core/class/crud.dart';
import 'package:ecomerce_app/linkapi.dart';

class Home_data {
  Crud crud; 
  Home_data(this.crud);
  
  getdata() async {
    var response =await crud.Postdata(Applink.home, {});
    return response.fold((left) =>left, (right) => right);
  }
}