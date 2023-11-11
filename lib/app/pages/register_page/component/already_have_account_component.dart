import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class AlreadyHaveAccountComponent extends StatelessWidget {
  const AlreadyHaveAccountComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
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
            Get.offNamed('/login');
          },
          child: Text(
            "Sign In",
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
