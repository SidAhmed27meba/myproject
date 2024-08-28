
import 'package:ecomerce_app/repeat_ecommerce/controler_1/onboarding_rep_controler.dart';
import 'package:ecomerce_app/repeat_ecommerce/view_1/widgets/cusstom_button_rep.dart';
import 'package:ecomerce_app/repeat_ecommerce/view_1/widgets/doot_rep.dart';
import 'package:ecomerce_app/repeat_ecommerce/view_1/widgets/slider_page_view_rep.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding_repeat_ecommerce extends StatelessWidget {
  const Onboarding_repeat_ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Onboarding_rep_control());
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Button_skip(),
            Expanded(
              flex: 4,
              child:Slider_page_view_rep()),
            Expanded(
              flex: 1,
              child: doot_control_rep()
            
            ),
            Expanded(
              flex: 1,
              child:button_arrow_back_rep()
              )
              
          ],
        ),
      ),
    );
  }
}



