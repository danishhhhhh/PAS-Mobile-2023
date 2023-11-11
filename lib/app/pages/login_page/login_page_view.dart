import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 50,
                width: 180,
                margin: EdgeInsets.only(bottom: 100),
                child: SvgPicture.asset(
                  "assets/images/harmoni_logo.svg",
                  width: 180,
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: ColorsBase.purpleDarkBase,
                    ),
                  ),
                  Text(
                    'Please enter your details',
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: ColorsBase.blackBase,
                    ),
                  ),
                  SizedBox(height: 80),
                  _buildTextField("Email"),
                  SizedBox(height: 20),
                  _buildTextField("Password"),
                   SizedBox(height: 60),
                  _buildLoginButton(),
                  _buildLoginButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText) {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60), // Tambah margin top
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: hintText,
          labelStyle: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14,
            color: ColorsBase.blackBase,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Sign In'),
              
      ),
    );
  }
  
}
