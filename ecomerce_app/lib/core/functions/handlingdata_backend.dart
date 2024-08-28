import 'package:ecomerce_app/core/class/status_request.dart';

handlingdata(response){
  if(response is StatusRequest){
    return response;
  } else {
    return StatusRequest.Success;
  }
}