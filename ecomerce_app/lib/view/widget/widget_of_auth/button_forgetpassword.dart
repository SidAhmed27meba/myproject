import 'package:flutter/material.dart';

class Button_forgetpass extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const Button_forgetpass({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text,textAlign: TextAlign.end,),
    );
  }
}