import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/register_page/register_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SignUpButton extends GetView<RegisterPageController> {
  const SignUpButton({super.key, required this.usernameTextEditing, required this.emailTextEditing, required this.passwordTextEditing, required this.formKey});

  final TextEditingController usernameTextEditing, emailTextEditing, passwordTextEditing;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () async {
          if (formKey.currentState!.validate()){
            if(!(emailTextEditing.text == "" && passwordTextEditing.text == "")){
              await controller.signin(
                  usernameTextEditing.text, emailTextEditing.text, passwordTextEditing.text);
            } else if(controller.successfulRegister.value) {
              controller.message.value = "Please fill username and password";
              controller.successfulRegister.value = false;
            }
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsBase.purpleDarkBase
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign Up',
                style: TextStyle(
                    color: ColorsBase.whiteBase,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
