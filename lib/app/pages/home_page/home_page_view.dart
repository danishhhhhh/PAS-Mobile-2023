import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/home_page/component/carousel.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:pas_mobile/app/pages/home_page/widget/cardimages.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ... your existing code

              // Move the _buildCard() widget to the bottom
              Padding(
                padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        "assets/images/harmoni_logo.svg",
                        width: 135,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/dump/6367448e-7474-4650-bd2d-02a8f7166ab4_106161_TABLET_LANDSCAPE_LARGE_16_9.jpg",
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 35, right: 25),
                child: Column(
                  children: [
                    Text(
                      "Hello Budi!",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 200, left: 35, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Choose a",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: ColorsBase.purpleDarkBase,
                            ),
                          ),
                          TextSpan(
                            text: "\nConcert ",
                            style: TextStyle(
                              color: ColorsBase.orangeBase,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: " For today!",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: ColorsBase.purpleDarkBase,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // _buildCard() widget is now at the bottom
              // Padding(
              // padding: EdgeInsets.only(top: 20, left: 25, right: 25),
              // child: _buildCard()
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

