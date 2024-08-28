
import 'package:flutter/material.dart';

class custom_text_feild extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final IconData icons;
  final Widget ? prefixIcon;
  final TextStyle ? hintStyle;
  final EdgeInsetsGeometry ? contentPadding;
  final  bool? filled;
  final Color?  fillColor;
  
  final TextEditingController mycontroler_textfield;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText ;
  final void Function()? onTapicon;
  const custom_text_feild({super.key, required this.labeltext, required this.hinttext, required this.icons, 
  required this.mycontroler_textfield, required this.validator,
   this.keyboardType, this.obscureText, this.onTapicon,this.prefixIcon, this.hintStyle,
   this.contentPadding, this.filled , this.fillColor
   });

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              
              child: TextFormField(
                keyboardType: keyboardType,
                obscureText: obscureText == null || obscureText == false ? false : true,
                validator: validator,
                controller: mycontroler_textfield,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal:30),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                 hintText:hinttext ,
                 suffixIcon: InkWell(child: Icon(icons),onTap: onTapicon,),
                 labelText:labeltext ,
                 border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30))
                ),
                
              ),
            );
  }
}
