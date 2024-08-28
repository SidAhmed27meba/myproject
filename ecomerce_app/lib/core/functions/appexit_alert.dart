

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> exit_app_alert(){
   Get.defaultDialog(
    title: "attention",
    middleText: "vous etes sur de quitter cette application",
    actions: [
      ElevatedButton(onPressed: (){
        exit(0);
      }, child: Text("confirmé")),
      ElevatedButton(onPressed: (){
        Get.back();
      }, child: Text("cancel")),
    ]
  );
  return Future.value(true);
}