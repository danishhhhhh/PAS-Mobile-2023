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
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60),
      child: Obx(
            ()=> TextField(
              controller: textEditingController,
            obscureText: isPass ? controller.isObsecure.value : controller.isObsecureFalse.value,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
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
                        }
                  )
                  : null,
              icon: Icon(icon, color: ColorsBase.orangeBase),
              labelStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  color: ColorsBase.blackBase,
                  fontWeight: FontWeight.w600),
              hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  color: ColorsBase.blackBase,
                  fontWeight: FontWeight.w400),
            ),
          ),
      ),
    );
  }
}
