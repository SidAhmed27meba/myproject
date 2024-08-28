import 'package:ecomerce_app/core/constant/image_asset.dart';
import 'package:flutter/material.dart';

class Logo_auth extends StatelessWidget {
  const Logo_auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: 100,
      child: Image.asset(AppImage_asset.url_image5!,height: 130,));
  }
}