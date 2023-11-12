import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/login_page/component/dont_have_account_component.dart';
import 'package:pas_mobile/app/pages/login_page/widget/text_field.dart';
import 'package:pas_mobile/app/pages/register_page/component/already_have_account_component.dart';
import 'package:pas_mobile/app/pages/register_page/widget/sign_up_button.dart';
import 'package:pas_mobile/app/pages/register_page/widget/text_field.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameTextEditingController =
        TextEditingController();
    final TextEditingController emailTextEditingController =
        TextEditingController();
    final TextEditingController passwordTextEditingController =
        TextEditingController();

    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: SvgPicture.asset(
                  "assets/images/harmoni_logo.svg",
                  width: 180,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: Column(
                  children: [
                    Text(
                      'Let’s Join Us!',
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
                children: [
                  TextFieldSignIn(
                      textEditingController: usernameTextEditingController,
                      hintText: "Username",
                      icon: Icons.person,
                      isPass: false),
                  SizedBox(height: 10),
                  TextFieldSignIn(
                      textEditingController: emailTextEditingController,
                      hintText: "Email",
                      icon: Icons.email,
                      isPass: false),
                  SizedBox(height: 10),
                  TextFieldSignIn(
                      textEditingController: passwordTextEditingController,
                      hintText: "Password",
                      icon: Icons.lock,
                      isPass: true),
                  SizedBox(height: 25),
                  SignUpButton(
                    emailTextEditing: emailTextEditingController,
                    passwordTextEditing: passwordTextEditingController,
                    usernameTextEditing: usernameTextEditingController,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: AlreadyHaveAccountComponent(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
