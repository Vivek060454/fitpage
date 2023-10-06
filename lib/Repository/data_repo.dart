import 'dart:convert';


import 'package:http/http.dart' as http;

import '../Model/data_model.dart';


class WebServise{

  Future<List<ProductModel>> callProfileApi() async {
    var url = Uri.parse('http://coding-assignment.bombayrunning.com/data.json');
    var response = await http.get(url,headers: {
      "Access-Control-Allow-Origin":" *",
    } );
    if(response.statusCode==200){
      print('Response status: ${response.statusCode}');
      print('Response body: ${jsonDecode(response.body)}');
      return  productModelFromJson(response.body);
    }

    return  productModelFromJson(response.body);
  }
}









