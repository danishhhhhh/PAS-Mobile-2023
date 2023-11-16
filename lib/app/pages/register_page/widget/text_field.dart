import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/register_page/register_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class TextFieldSignIn extends GetView<RegisterPageController> {
  const TextFieldSignIn(
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
      () => TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'You need to fill this field';
          } else if (hintText == "Username") {
            if (!RegExp(r"^[a-zA-Z0-9]+$").hasMatch(value)) {
              return 'Username can only contain letters and numbers';
            } else if (value.length < 6) {
              return 'Username must be at least 6 characters';
            }
          } else if (hintText == "Email") {
            if (!value.contains("@")) {
              return 'Please enter a valid email address';
            }
          } else if (hintText == "Password") {
            if (!RegExp(r"^[a-zA-Z0-9]+$").hasMatch(value)) {
              return 'Username can only contain letters and numbers';
            }
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: textEditingController,
        obscureText: isPass
            ? controller.isObsecure.value
            : controller.isObsecureFalse.value,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: controller.successfulRegister.value
                      ? ColorsBase.blackBase
                      : ColorsBase.redBase)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: controller.successfulRegister.value
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
                    controller.isObsecure.value = !controller.isObsecure.value;
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
            color: controller.successfulRegister.value
                ? ColorsBase.blackBase
                : ColorsBase.redBase),
      ),
    );
  }
}
