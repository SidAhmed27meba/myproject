//import 'package:ecomerce_app/ecomerce_other/view/auth/login_screen.dart';

import 'package:ecomerce_app/binding.dart';
import 'package:ecomerce_app/controler/auth_controler.dart';
//import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/core/localization/change_localcontrole.dart';
import 'package:ecomerce_app/core/localization/local.dart';
import 'package:ecomerce_app/core/services/services_ecomerce.dart';
import 'package:ecomerce_app/firebase_options.dart';
//import 'package:ecomerce_app/repeat_ecommerce/core_1/constant_1/app_color_repecom.dart';
//import 'package:ecomerce_app/repeat_ecommerce/core_1/constant_1/routes.dart';

//import 'package:ecomerce_app/repeat_ecommerce/view_1/screens/onboarding_repeat_ecommerce.dart';
import 'package:ecomerce_app/routes.dart';

//import 'package:ecomerce_app/view/screens/change_launguage.dart';
//import 'package:ecomerce_app/view/screens/onboarding.dart';
//import 'package:ecomerce_app/view/screens/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  await initilize_services();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Changelanguage_controler controller = Get.put(Changelanguage_controler());
              Get.put(Controler_auth());
     return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale:controller.language,
      translations: Launguage(),
      //theme: ,
      initialBinding: Mybinding(),
      
      getPages: routes
      
      
      );
      
}
}

/*





theme: ThemeData(
        textTheme: TextTheme(headline1: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,
                 color:App_color_repecom.black ),
                 bodyText1: TextStyle(color: App_color_repecom.black)
                 )
      ),
*/      
// routes:App_routes.route_1