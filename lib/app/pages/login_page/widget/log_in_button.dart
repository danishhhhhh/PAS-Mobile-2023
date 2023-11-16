import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/login_page/login_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class LoginInButton extends GetView<LoginPageController> {
  const LoginInButton(
      {super.key,
      required this.emailTextEditing,
      required this.passwordTextEditing});

  final TextEditingController emailTextEditing, passwordTextEditing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () async {
          if(!(emailTextEditing.text == "" && passwordTextEditing.text == "")){
            await controller.login(
                emailTextEditing.text, passwordTextEditing.text);
          } else {
            controller.message.value = "Please fill username and password";
            controller.successfulLogin.value = false;
          }
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorsBase.purpleDarkBase),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                color: ColorsBase.whiteBase,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
