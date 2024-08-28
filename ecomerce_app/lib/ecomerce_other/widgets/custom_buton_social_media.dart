import 'package:ecomerce_app/ecomerce_other/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Custom_buton_social_media extends StatelessWidget {
  final String text;
  final String image;
  final Function()? onPressed;
  const Custom_buton_social_media({super.key, required this.text, required this.image, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade50
      ),
      child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Image.asset(image),
                  SizedBox(width: 90,),
                  CustomText(text: text)
                ],
              ),
              onPressed: onPressed),
    );
  }
}



