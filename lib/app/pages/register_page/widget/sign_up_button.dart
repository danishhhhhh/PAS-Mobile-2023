import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/register_page/register_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SignUpButton extends GetView<RegisterPageController> {
  const SignUpButton({super.key, required this.usernameTextEditing, required this.emailTextEditing, required this.passwordTextEditing});

  final TextEditingController usernameTextEditing, emailTextEditing, passwordTextEditing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: ElevatedButton(
        onPressed: () async {
          if(!(emailTextEditing.text == "" && passwordTextEditing.text == "" && emailTextEditing.text == "")){
            await controller.signup(
                emailTextEditing.text, passwordTextEditing.text, emailTextEditing.text);
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Obx(()=>Text(controller.messageSignUp.value)),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Text('please fill the fields'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
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
