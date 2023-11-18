import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SignoutButton extends StatelessWidget {
  const SignoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    ProfilePageController controller = Get.put(ProfilePageController());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {
          controller.signout();
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            backgroundColor: ColorsBase.redBase,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          "Sign Out",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            color: ColorsBase.whiteBase,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
