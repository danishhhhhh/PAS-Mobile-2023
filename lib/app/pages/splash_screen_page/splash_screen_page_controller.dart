
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController extends GetxController {

  late final SharedPreferences prefs;

  @override
  void onInit() {
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async{
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 2), () async {
      if(prefs.getString('token') == null){
        Get.offNamed('/login');
      }else{
        Get.offNamed('/menu');
      }
    });

  }
}