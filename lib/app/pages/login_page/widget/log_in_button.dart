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
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: ElevatedButton(
        onPressed: () async {
          if(!(emailTextEditing.text == "" && passwordTextEditing.text == "")){
            await controller.login(
                emailTextEditing.text, passwordTextEditing.text);
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
