import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  Rx<File> image = File('').obs;

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
      //error message to the user
    }
  }
}