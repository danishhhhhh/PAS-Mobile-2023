import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/login_page/component/dont_have_account_component.dart';
import 'package:pas_mobile/app/pages/login_page/login_page_controller.dart';
import 'package:pas_mobile/app/pages/login_page/widget/google_sign_in_button.dart';
import 'package:pas_mobile/app/pages/login_page/widget/log_in_button.dart';
import 'package:pas_mobile/app/pages/login_page/widget/text_field.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailTextEditimgController =
        TextEditingController();
    final TextEditingController passwordTextEditimgController =
        TextEditingController();
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: height * 0.05),
              child: SvgPicture.asset(
                "assets/images/harmoni_logo.svg",
                width: 180,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: height * 0.075),
              child: Column(
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: ColorsBase.purpleDarkBase,
                    ),
                  ),
                  Text(
                    'Please enter your details',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: ColorsBase.blackBase,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldLogIn(
                    textEditingController: emailTextEditimgController,
                    hintText: "Username",
                    icon: Icons.person,
                    isPass: false),
                SizedBox(height: 10),
                TextFieldLogIn(
                    textEditingController: passwordTextEditimgController,
                    hintText: "Password",
                    icon: Icons.lock,
                    isPass: true),
                Obx(
                  () => controller.successfulLogin.value
                      ? Container()
                      : Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            controller.message.value,
                            style: TextStyle(
                                color: ColorsBase.redBase,
                                fontFamily: "Poppins",
                                fontSize: 12),
                          ),
                        ),
                ),
                SizedBox(height: height * 0.075),
                LoginInButton(
                  emailTextEditing: emailTextEditimgController,
                  passwordTextEditing: passwordTextEditimgController,
                ),
                SizedBox(height: 10),
                GoogleSignInButton(),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: EdgeInsets.only(bottom: height * 0.025),
                    child: DontHaveAccountComponent()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
