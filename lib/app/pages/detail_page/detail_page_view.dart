import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/detail_page/component/bottom_container.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/back_button.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/purchased_button.dart';

class DetailPageView extends StatelessWidget {
  const DetailPageView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: height * 0.4,
              child: Image.asset(
                "assets/images/dump/6367448e-7474-4650-bd2d-02a8f7166ab4_106161_TABLET_LANDSCAPE_LARGE_16_9.jpg",
                fit: BoxFit.cover,
              ),
            ),
            BottomContainer(),
            BackButtonArrow(),
            Align(
              alignment: Alignment.bottomCenter,
              child: PurchasedButton(),
            ),
          ],
        ),
      ),
    );
  }
}
