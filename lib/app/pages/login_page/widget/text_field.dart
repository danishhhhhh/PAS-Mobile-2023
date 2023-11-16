import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/login_page/login_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class TextFieldLogIn extends GetView<LoginPageController> {
  const TextFieldLogIn(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.icon,
      required this.isPass});

  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  final bool isPass;


  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: textEditingController,
        obscureText: isPass
            ? controller.isObsecure.value
            : controller.isObsecureFalse.value,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: controller.successfulLogin.value
                      ? ColorsBase.blackBase
                      : ColorsBase.redBase)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: controller.successfulLogin.value
                    ? ColorsBase.blackBase
                    : ColorsBase.redBase),
          ),
          hintText: hintText,
          suffixIcon: isPass
              ? IconButton(
                  icon: Icon(
                    controller.isObsecure.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: ColorsBase.orangeBase,
                  ),
                  onPressed: () {
                    controller.isObsecure.value =
                        !controller.isObsecure.value;
                  })
              : null,
          icon: Icon(icon, color: ColorsBase.orangeBase),
          hintStyle: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              color: ColorsBase.blackBase,
              fontWeight: FontWeight.w400),
        ),
        style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            color: controller.successfulLogin.value
                ? ColorsBase.blackBase
                : ColorsBase.redBase),
      ),
    );
  }
}
