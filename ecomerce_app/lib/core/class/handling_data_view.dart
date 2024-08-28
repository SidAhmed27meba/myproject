//import 'package:ecomerce_app/controler/test_controler.dart';
import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/constant/image_asset.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
class Handlingdata_view extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const Handlingdata_view({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.Loading 
    ? Center(child: Lottie.asset(AppImage_asset.animation_loading, width: 250, height: 250)) 
    : statusRequest == StatusRequest.server_faileur
    ? Center(child: Lottie.asset(AppImage_asset.animation_serverfailure, width: 250, height: 250))
    : statusRequest == StatusRequest.ofline_faileur
    ? Center(child: Lottie.asset(AppImage_asset.animation_offline, width: 250, height: 250))
    : statusRequest == StatusRequest.faileur
    ? Center(child:Lottie.asset(AppImage_asset.animation_Nodata, width: 250, height: 250))
    : widget;
        
       
  }
}

class Handlingdata_request extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const Handlingdata_request({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.Loading 
    ? Center(child: Lottie.asset(AppImage_asset.animation_loading, width: 250, height: 250)) 
    : statusRequest == StatusRequest.server_faileur
    ? Center(child: Lottie.asset(AppImage_asset.animation_serverfailure, width: 250, height: 250))
    : statusRequest == StatusRequest.ofline_faileur
    ? Center(child: Lottie.asset(AppImage_asset.animation_offline, width: 250, height: 250))
    
    : widget;
        
       
  }
}