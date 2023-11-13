import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterPageController extends GetxController {
  RxBool isObsecure = true.obs;
  RxBool isObsecureFalse = false.obs;
  RxBool successfulLogin = true.obs;
  RxString message = "".obs;

  signin(String username, String email, String password) async {
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
      print("response: ${response.body}");
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      bool status = jsonResponse['status'];
      String message = jsonResponse['message'];
      if(status){
        this.message.value = message;
        successfulLogin.value = true;
      } else {
        this.message.value = message;
        successfulLogin.value = false;
      }
    } else {
      successfulLogin.value = false;
      print("status code : ${response.statusCode.toString()}");
    }
  }
}