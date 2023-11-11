import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/login_page/component/dont_have_account_component.dart';
import 'package:pas_mobile/app/pages/login_page/widget/google_sign_in_button.dart';
import 'package:pas_mobile/app/pages/login_page/widget/sign_in_button.dart';
import 'package:pas_mobile/app/pages/login_page/widget/text_field.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailTextEditimgController = TextEditingController();
    final TextEditingController passwordTextEditimgController = TextEditingController();

    print(emailTextEditimgController.text);
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
                children: [
                  TextFieldSignIn(textEditingController: emailTextEditimgController, hintText: "Email", icon: Icons.email, isPass: false),
                  SizedBox(height: 10),
                  TextFieldSignIn(textEditingController: passwordTextEditimgController, hintText: "Password", icon: Icons.lock, isPass: true),
                  SizedBox(height: 25),
                  SignInButton(emailTextEditing: emailTextEditimgController, passwordTextEditing: passwordTextEditimgController,),
                  SizedBox(height: 10),
                  GoogleSignInButton(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: DontHaveAccountComponent(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, IconData icon, bool isPass) {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60),
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: hintText,
          suffixIcon: isPass
              ? Icon(
                  Icons.remove_red_eye,
                  color: ColorsBase.orangeBase,
                )
              : null,
          icon: Icon(
            icon,
            color: ColorsBase.orangeBase,
          ),
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
    );
  }
}
