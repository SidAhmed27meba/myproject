import 'package:ecomerce_app/core/class/crud.dart';
import 'package:ecomerce_app/linkapi.dart';


 class Testdata {
  Crud crud; 
  Testdata(this.crud);
  getdata() async {
    var response =await crud.Postdata(Applink.test, {});
    return response.fold((left) =>left, (right) => right);
  }
}