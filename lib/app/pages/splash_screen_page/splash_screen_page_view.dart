import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
           SvgPicture.asset(
                   "assets/images/harmoni_logo.svg",
                   width: 300,
                 ),//nanti aku cari tau lg
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Make your live sounding',
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 15,
                  color: ColorsBase.orangeBase,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
