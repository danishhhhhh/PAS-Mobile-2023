import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.emailTextEditing, required this.passwordTextEditing});

  final TextEditingController emailTextEditing, passwordTextEditing;

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
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all(ColorsBase.purpleDarkBase),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign In',
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
