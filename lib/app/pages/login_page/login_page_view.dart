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
                  SizedBox(height: 80),
                  _buildTextField("Email", Icons.email, false),
                  SizedBox(height: 20),
                  _buildTextField("Password", Icons.lock, true),
                   SizedBox(height: 60),
                  _buildLoginButton(),
                  SizedBox(height: 10),
                  _buildGoogleSignInButton(),
                  SizedBox(height: 100),
                  _buildSignInText()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, IconData icon, bool isPass) {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60), // Tambah margin top
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: hintText,
          suffixIcon: isPass ? Icon(Icons.remove_red_eye, color: ColorsBase.orangeBase,) : null,
          icon: Icon(icon, color: ColorsBase.orangeBase,),
          labelStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            color: ColorsBase.blackBase,
            fontWeight: FontWeight.w600
          ),
          hintStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            color: ColorsBase.blackBase,
            fontWeight: FontWeight.w400
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
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(ColorsBase.purpleDarkBase),
        ),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10), 
          Text('Sign In', style: TextStyle(
            color: ColorsBase.whiteBase,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 14
            )
          ),
        ],
      ),
      ),
    );
  }
  Widget _buildGoogleSignInButton() {
  return Container(
    width: double.infinity,
    height: 50,
    margin: EdgeInsets.symmetric(horizontal: 60),
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(ColorsBase.lightGreyBase),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10), 
          Text('Sign In with Google', style: TextStyle(color: ColorsBase.blackBase)),
        ],
      ),
    ),
  );
} 

 Widget _buildSignInText() {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: ColorsBase.blackBase,
      ),
      children: <TextSpan>[
        TextSpan(text: "Don't have an account? "),
        TextSpan(
          text: "Sign up",
          style: TextStyle(
            color: ColorsBase.blackBase, 
            fontWeight: FontWeight.w600, 
          ),
        ),
      ],
    ),
  );
}
}

