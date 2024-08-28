import 'package:ecomerce_app/controler/test_controler.dart';
import 'package:ecomerce_app/core/class/handling_data_view.dart';
import 'package:ecomerce_app/core/constant/color.dart';
//import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Testview extends StatelessWidget {
  const Testview({super.key});

  @override
  Widget build(BuildContext context) {
    Testcontroler controler = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor:App_color.primarycolor ,
      ),
      body: Handlingdata_view(statusRequest: controler.statusRequest,
      
      widget: ListView.builder(
              itemCount: controler.data_frombackend.length,
              itemBuilder:(context, index) => 
              Text("${controler.data_frombackend[index]}")
             ),)
    );
  }
}