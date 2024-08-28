import 'package:ecomerce_app/controler/onboardingcontroler.dart';
//import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/data/datasource/static/dataonbo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Sliderpageview extends GetView<Onboardingcontroler>{
  const Sliderpageview({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  PageView.builder(
      controller: controller.pageController,
              onPageChanged:(val){
               controller.pagechanged(val);
              },
              itemCount: Dataonbo.length,
              itemBuilder:(context, index) {
              return Column(
                
                children: [
                  SizedBox(height: 60,),
                  Text(Dataonbo[index].title!,style: Theme.of(context).textTheme.headline1),
                  SizedBox(height: 60,),
                  Image.asset(Dataonbo[index].imageurl!,
                  height: Get.height/3.3,
                 // fit: BoxFit.fill,
                 
                  ),
                    
                  SizedBox(height: 30,),
                  Container(
                    alignment: Alignment.center,
                    child: Text(Dataonbo[index].body_text!,textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              );
                        }, 
                      
                        );
    
  }
}



