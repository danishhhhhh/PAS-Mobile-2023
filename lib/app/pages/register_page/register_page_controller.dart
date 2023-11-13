import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterPageController extends GetxController {
  RxBool isObsecure = true.obs;
  RxBool isObsecureFalse = false.obs;
  RxBool successfulLogin = false.obs;
  RxString messageSignUp = "".obs;

  signup(String username, String email, String password) async {
    final response = await http.post(
      Uri.parse("https://mediadwi.com/api/latihan/register-user"),
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: <String, String>{
        'username': username,
        'full_name': username,
        'email': email,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      bool status = jsonResponse['status'];
      String message = jsonResponse['message'];
      print("status: ${status}");
        messageSignUp.value = message;
        print("message: ${message}");
    } else {
      print("status code : ${response.statusCode.toString()}");
    }
  }
}