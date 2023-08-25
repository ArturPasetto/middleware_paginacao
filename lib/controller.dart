import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Controller extends GetxController{

  static Controller get to => Get.find<Controller>();

  String? token;

  bool isValid() {

    if(token == null){
      return false;
    }

    return token == "lorem";
  }

  Future<void> login() async {
    token = "lorem";
    await saveToken(token);
  }

  Future<void> saveToken(String? token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    if(token != null){
      await pref.setString('token', token);
    }
    else {
      await pref.remove('token');
    }

    debugPrint("## save token = $token");
  }

  Future<void> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    token = pref.getString('token');
    debugPrint("## get token = $token");
  }

}