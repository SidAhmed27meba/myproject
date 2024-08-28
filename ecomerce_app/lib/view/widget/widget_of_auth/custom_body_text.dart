import 'package:flutter/material.dart';

class custom_bodytext extends StatelessWidget {
  final String text_body;
  const custom_bodytext({super.key, required this.text_body});

  @override
  Widget build(BuildContext context) {
    return Container(
              
              margin: EdgeInsets.only(top:10,bottom: 20,left: 40,right: 40),
              child: Text(text_body, 
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
              ),
            );
  }
}