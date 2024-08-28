import 'package:ecomerce_app/controler/home_controler.dart';
import 'package:ecomerce_app/core/class/handling_data_view.dart';
import 'package:ecomerce_app/core/constant/color.dart';
import 'package:ecomerce_app/linkapi.dart';
import 'package:ecomerce_app/view/widget/widget_of_auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
   Home_controler home_controler = Get.put(Home_controler());
    return Scaffold(
      
      body: GetBuilder< Home_controler>(builder:(controller) => 
      Handlingdata_view(statusRequest: controller.statusRequest, widget: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            
            Container(
              margin : EdgeInsets.only(top: 10),            
              child: Row(
                children: [
                  Expanded(
                    
                    child: custom_text_feild(
                      contentPadding: EdgeInsets.symmetric(horizontal:30),
                       
                      hinttext: "Find product",
                      prefixIcon:Icon(Icons.search),
                      hintStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                           borderRadius: BorderRadius.circular(10)
                        ),
                        filled: true,
                        fillColor: Colors.grey[200]
                    )
                    /*
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal:30),                        
                        hintText: "Find product" ,
                        hintStyle: TextStyle(fontSize: 18),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                           borderRadius: BorderRadius.circular(10)
                        ),
                        filled: true,
                        fillColor: Colors.grey[200]
                        ),
                    ),
                    */
                  ),
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                      width: 60,
                      padding: EdgeInsets.symmetric(vertical: 8),
                    child: IconButton(onPressed: (){}, 
                    icon: Icon(Icons.notification_add_outlined,size: 30,
                    color: Colors.grey[600],)                  
                    )
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 150,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:App_color.primarycolor ,
                    ),                   
                    child: ListTile(
                      title: Text("A summer surprise",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                      subtitle: Text("Cashback 20 %",
                      style: TextStyle(color: Colors.white,fontSize: 30),),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    right: -20,
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: App_color.red,
                        borderRadius: BorderRadius.circular(160)
                      ),
                    ),
                  )
                ],
              ) ,
            ),

            Container(
              height: 70,
              child: ListView.separated(
              scrollDirection: Axis.horizontal,  
              itemCount:controller.categories.length ,
              itemBuilder:(context, index) => ListTile(
                title: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: App_color.secondcollor,
                    borderRadius: BorderRadius.circular(20)
                  ),
          child: SvgPicture.network("${Applink.image_categorie}/${controller.categories[index]['categories_image']}",color: App_color.secondcollor,),
                ),
                subtitle: Text("${controller.categories[index]['categoriesName']}"),
              ) , 
              separatorBuilder:(context, index) => SizedBox(width: 10,) ,
               ),
            ),
            SizedBox(height:15 ,),
            Text("Product for you"),
            Container(
              height: 100,
              child: ListView.separated(
              scrollDirection: Axis.horizontal,  
              itemCount:controller.itemss.length ,
              itemBuilder:(context, index) => 
              Stack(
                children: [
                  Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: App_color.grey,
                    borderRadius: BorderRadius.circular(20)
                  ),
          child:Image.network("${Applink.image_items}/${controller.itemss[index]['items_image']}")     
                ),
                Positioned(
                  top: 90,
                  left: 10,
                  child: Text("${controller.itemss[index]['itemsName']}")),
                ],
              ),                 
              separatorBuilder:(context, index) => SizedBox(width: 10,) ,
               ),
            ),

          ],
        )
      ),))
    );
  }
}