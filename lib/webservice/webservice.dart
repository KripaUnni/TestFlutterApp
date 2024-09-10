import 'dart:convert';
import 'dart:developer';
import 'package:flutter_application/model/userModel.dart';
import 'package:http/http.dart' as http;

class Webservice {
  static const mainurl = 'https://jsonplaceholder.typicode.com/';

  Future<List<UserModel>?> fetchUsers() async{
    try{
      final response = await http.get(Uri.parse(mainurl + "albums"));
      if(response.statusCode == 200){
        final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

        return parsed 
        .map<UserModel>((json) => UserModel.fromJson(json))
        .toList();
      } else{
        throw Exception("Failed to load users");
      } 
    } catch (e){
      log(e.toString());
    }
    return null;
  }
}
