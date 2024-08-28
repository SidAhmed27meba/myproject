import 'package:ecomerce_app/ecomerce_other/view_model/Auth_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    
  }

}