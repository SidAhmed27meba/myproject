import 'dart:convert';

import 'package:ecomerce_app/core/class/status_request.dart';
import 'package:ecomerce_app/core/functions/check_internet.dart';

import 'package:either_dart/either.dart';

import 'package:http/http.dart' as http;


class Crud {
   

Future<Either<StatusRequest , Map>> Postdata(String link,Map data) async {
  try {
   if(await checkinternet() ){
    var response = await http.post(Uri.parse(link),body:data );
    if(response.statusCode == 200 || response.statusCode == 201){
      
     Map responsebody = jsonDecode(response.body);
     

     return Right(responsebody);
    } else{
      return Left(StatusRequest.server_faileur);
    }
  } else{
    return Left(StatusRequest.ofline_faileur);
  }
  }catch(_){
     return Left(StatusRequest.server_Exception);
  }



 }




}


