
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'modelof.dart';

class Api{

  Future<Slaman> Sulmankhan()async{
    final response=await http.get(Uri.parse("https://api.quran.com/api/v3/chapters"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200){
      return Slaman.fromJson(data);
    }else{
      return Slaman.fromJson(data);
    }
  }

}