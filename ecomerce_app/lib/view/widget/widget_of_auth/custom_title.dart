import 'package:flutter/material.dart';

class custom_title extends StatelessWidget {
  final String title;
  const custom_title({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, 
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
            );
  }
}