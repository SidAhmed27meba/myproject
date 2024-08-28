
import 'package:ecomerce_app/repeat_ecommerce/controler_1/onboarding_rep_controler.dart';
import 'package:ecomerce_app/repeat_ecommerce/core_1/constant_1/app_color_repecom.dart';
import 'package:ecomerce_app/repeat_ecommerce/data_1/static/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class doot_control_rep extends StatelessWidget {
  const doot_control_rep({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Onboarding_rep_control>(
      builder:(controler)=> Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(data_onboarding.length, (index) => 
                AnimatedContainer(
                margin: EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 900),              
                height: 6,
                width: controler.currentpage == index ? 20:6,
                
                decoration: BoxDecoration(color:App_color_repecom.purpel,borderRadius: BorderRadius.circular(10)),
                ))
              ],
            )
    );
    



  }


}


