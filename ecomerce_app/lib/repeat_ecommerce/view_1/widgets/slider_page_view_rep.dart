

import 'package:ecomerce_app/repeat_ecommerce/controler_1/onboarding_rep_controler.dart';

import 'package:ecomerce_app/repeat_ecommerce/data_1/static/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Slider_page_view_rep extends GetView<Onboarding_rep_control> {
  const Slider_page_view_rep({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pagecontroler,
      onPageChanged: (val) {
        controller.onpagechanged(val);
      },
              itemCount:data_onboarding.length ,
              itemBuilder:(context, index) => Column(
              children: [
                 Container(
                  
                   child: Image.asset(data_onboarding[index].image_url!,
                   height: 300,
                   width: 200,
                   fit:BoxFit.fill ,
                   
                   ),
                 ),
                 SizedBox(height: 20),
                 Text(data_onboarding[index].title!,style: Theme.of(context).textTheme.headline1 ,),
                 SizedBox(height: 20,),
                 Text(data_onboarding[index].text_body!,style: Theme.of(context).textTheme.bodyText1 ,) 
              ],
            )
            
            ,);
  }
}

