import 'package:ecomerce_app/controler/auth_controler.dart';
import 'package:ecomerce_app/controler/test_controler.dart';
import 'package:ecomerce_app/core/class/crud.dart';
import 'package:get/get.dart';

class Mybinding extends Bindings{
  @override
  void dependencies() {
     Get.lazyPut(() => Controler_auth(),fenix: true);
     Get.put(Crud());
     Get.put(Testcontroler());
  }
  
}