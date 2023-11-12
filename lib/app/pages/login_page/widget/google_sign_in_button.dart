import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(ColorsBase.lightGreyBase),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/icons/google.svg",
              height: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text('Sign In with Google',
                style: TextStyle(color: ColorsBase.blackBase)),
          ],
        ),
      ),
    );
  }
}
