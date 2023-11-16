import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/register_page/component/already_have_account_component.dart';
import 'package:pas_mobile/app/pages/register_page/register_page_controller.dart';
import 'package:pas_mobile/app/pages/register_page/widget/sign_up_button.dart';
import 'package:pas_mobile/app/pages/register_page/widget/text_field.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  RegisterPageView({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            height: height,
            margin: EdgeInsets.symmetric(horizontal: width * 0.125),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(height * 0.075),
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
                        'Let\' Join Us!',
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFieldSignIn(
                          textEditingController:
                              controller.usernameTextEditingController,
                          hintText: "Username",
                          icon: Icons.person,
                          isPass: false),
                      SizedBox(height: 10),
                      TextFieldSignIn(
                          textEditingController:
                              controller.emailTextEditingController,
                          hintText: "Email",
                          icon: Icons.email,
                          isPass: false),
                      SizedBox(height: 10),
                      TextFieldSignIn(
                          textEditingController:
                              controller.passwordTextEditingController,
                          hintText: "Password",
                          icon: Icons.lock,
                          isPass: true),
                      Obx(
                        () => controller.successfulRegister.value
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
                      SizedBox(height: 25),
                      Obx(
                        () => controller.isLoading.value
                            ? Container(
                                height: 50,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: ColorsBase.greyBase,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Center(
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation(
                                          ColorsBase.lightGreyBase),
                                    ),
                                  ),
                                ),
                              )
                            : SignUpButton(
                                emailTextEditing:
                                    controller.emailTextEditingController,
                                passwordTextEditing:
                                    controller.passwordTextEditingController,
                                usernameTextEditing:
                                    controller.usernameTextEditingController,
                                formKey: formKey,
                              ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        margin: EdgeInsets.only(bottom: height * 0.025),
                        child: AlreadyHaveAccountComponent()),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
