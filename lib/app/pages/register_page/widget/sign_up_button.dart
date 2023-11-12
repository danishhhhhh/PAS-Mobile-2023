import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key, required this.usernameTextEditing, required this.emailTextEditing, required this.passwordTextEditing});

  final TextEditingController usernameTextEditing, emailTextEditing, passwordTextEditing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: ElevatedButton(
        onPressed: () {
          print("email: ${emailTextEditing.text} : pass: ${passwordTextEditing.text}");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsBase.orangeBase
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign Up',
                style: TextStyle(
                    color: ColorsBase.purpleDarkBase,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
