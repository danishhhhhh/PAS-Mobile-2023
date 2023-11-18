import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePageController extends GetxController {
  Rx<File> image = File('').obs;
  late final SharedPreferences prefs;
  RxString username = "".obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    prefs = await SharedPreferences.getInstance();
    username.value = prefs.getString("username") ?? "No Username";
  }

  Future<void> imagePicker() async {
    try {
      final imagePick = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (imagePick == null) {
        return;
      }
      final imageTemp = File(imagePick.path);
      image.value = imageTemp;
    } on PlatformException catch (e) {
      print("Error picking image: $e");
    }
  }

  signout() async {
    prefs.clear();
    Get.offNamed("/login");
  }
}