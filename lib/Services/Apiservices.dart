
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

final apiserviceProvider = Provider<Apiservices>((ref)=>Apiservices());



class Apiservices {

  var endurl = "https://jsonplaceholder.typicode.com/todos" ;

  dynamic nameProvider = StateProvider((ref) => []);

  Future getUserList ()async{
   try{
     Response response = await get(Uri.parse(endurl));
     if(response.statusCode == 200){
       var result = jsonDecode(response.body);
       nameProvider = result ;
       return nameProvider ;
     }
   }catch(e){
     throw Exception("error occured");
     print(e);
   }
  }

}