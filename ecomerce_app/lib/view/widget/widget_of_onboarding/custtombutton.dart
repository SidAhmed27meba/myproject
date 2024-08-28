

import 'package:ecomerce_app/controler/onboardingcontroler.dart';
import 'package:ecomerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombuton extends GetView<Onboardingcontroler> {
  const Custombuton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                 child: MaterialButton(
                  child: Text("continue"),
                  color: App_color.primarycolor,
                  onPressed: (){controller.next();}),
               );
  }
}