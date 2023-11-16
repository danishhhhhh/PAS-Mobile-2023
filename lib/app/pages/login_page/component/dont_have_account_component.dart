import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class DontHaveAccountComponent extends StatelessWidget {
  const DontHaveAccountComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: ColorsBase.blackBase,
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: (){
            Get.offNamed('/register');
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 12,
              color: ColorsBase.blackBase,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
