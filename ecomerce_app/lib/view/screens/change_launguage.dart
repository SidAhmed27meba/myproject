//import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/core/constant/app_routes.dart';
import 'package:ecomerce_app/core/localization/change_localcontrole.dart';
import 'package:ecomerce_app/view/widget/widget_of_changelang/custtombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class change_lunguage extends GetView<Changelanguage_controler> {
  const change_lunguage({super.key});

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style:Theme.of(context).textTheme.headline1 ,),

            custtombutton_lang(namebuton: "ar",onPressed: () {
              controller.initiallanguage("ar");
              Get.toNamed(App_rout.Onboarding);
            },),
            SizedBox(height: 30,),
            custtombutton_lang(namebuton: "en",onPressed: () {
              controller.initiallanguage("en");
              Get.toNamed(App_rout.Onboarding);
            },),

            SizedBox(height: 30,),
            custtombutton_lang(namebuton: "fr",onPressed: () {
              controller.initiallanguage("fr");
              Get.toNamed(App_rout.Onboarding);
            },)
          ],
        ),
      ),
    );
  }
}