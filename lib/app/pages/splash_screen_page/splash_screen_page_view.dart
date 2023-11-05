import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image.asset('assets/images/logoHarmonia.png'),//nanti aku cari tau lg
            SizedBox(height: 20),
            Text(
              'Make your live sounding',
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 15,
                color: ColorsBase.orangeBase,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
