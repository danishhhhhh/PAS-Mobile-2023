import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/splash_screen_page/splash_screen_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashScreenController controller = Get.put(SplashScreenController());
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
           SvgPicture.asset(
                   "assets/images/harmoni_logo.svg",
                   width: 300,
                 ),
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
