import 'package:flutter/material.dart';

class Custom_Text_Form extends StatelessWidget {
  
  final String hinttext;
  final String? Function(String?)? onSave;
  final String? Function(String?)? validat;
  const Custom_Text_Form({super.key, required this.hinttext, required this.onSave, required this.validat});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onSaved: onSave,
        validator: validat,
        decoration: InputDecoration(
          hintText:hinttext ,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}





/*
class CustomTextForm extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroler;
  final String? Function(String?)? validator;
  const CustomTextForm({super.key, required this.hinttext, required this.mycontroler, required this.validator});
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
              validator:validator ,
              controller:mycontroler ,
              //obscureText: true,
              decoration: InputDecoration(
                hintText: hinttext,
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(vertical:2 ,horizontal: 20),
                filled: true,
                fillColor: Colors.grey[200],
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color.fromARGB(255, 184, 183, 183))
                ),
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey)
                )  
              ),
             );
  }
}
*/
