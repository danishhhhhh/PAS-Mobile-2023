import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> {
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

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
                    "Let's Join Us!",
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
                  _buildTextField(usernameController, "Username", Icons.person),
                  SizedBox(height: 20),
                  _buildTextField(emailController, "Email", Icons.email),
                  SizedBox(height: 20),
                  _buildTextField(
                      passwordController, "Password", Icons.lock,
                      isPasswordVisible: isPasswordVisible),
                  SizedBox(height: 60),
                  _buildLoginButton(),
                  SizedBox(height: 100),
                  _buildSignInText(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText,
      IconData icon, {bool isPasswordVisible = false}) {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60),
      child: TextField(
        controller: controller,
        obscureText: isPasswordVisible,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: hintText,
          suffixIcon: InkWell(
            onTap: togglePasswordVisibility,
            child: Icon(
              isPasswordVisible ? Icons.visibility_off : Icons.visibility,
              color: ColorsBase.orangeBase,
            ),
          ),
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
          backgroundColor:
              MaterialStateProperty.all<Color>(ColorsBase.orangeBase),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(width: 10), 
          Text('Sign Up', style: TextStyle(
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
        TextSpan(text: "Already have an account? "),
        TextSpan(
          text: "Sign In",
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
