import 'package:ecomerce_app/controler/onboardingcontroler.dart';
import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/data/datasource/static/dataonbo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Dootcontrole extends StatelessWidget {
  const Dootcontrole({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Onboardingcontroler>(builder:(controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 ...List.generate(Dataonbo.length, 
              (index) {
                return  AnimatedContainer(
                  margin: EdgeInsets.only(right:5),
                  duration: Duration(microseconds: 900),
                  height: 6,
                  width: controller.curentpage == index ? 20 : 6 ,
                  decoration: BoxDecoration(
                    color: App_color.primarycolor,
                    borderRadius: BorderRadius.circular(10)
                  ),);
                
              }
              
              )
                ],
              ),
      
    );
  }
}