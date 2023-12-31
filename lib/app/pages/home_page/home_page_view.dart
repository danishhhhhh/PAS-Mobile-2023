import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/data/email_data.dart';
import 'package:pas_mobile/app/pages/home_page/home_page_controller.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pas_mobile/app/pages/home_page/widget/cardimages.dart';
import 'package:pas_mobile/app/pages/home_page/widget/carousel.dart';

class HomePageView extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {

    ProfilePageController profilePageController = Get.find<ProfilePageController>();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width * 0.1,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/images/harmoni_logo.svg",
                      width: 135,
                    ),
                    Obx(
                        () => ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: (profilePageController.image.value.path == "") ?
                        Image.asset(
                          "assets/images/dump/pfp.jpg",
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        )
                        :
                        Image.file(
                          profilePageController.image.value,
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  children: [
                    Obx(
                    () => Text(
                        "Hello, ${controller.username.value}!",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                child: CarouselPage(),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Choose a",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: ColorsBase.purpleDarkBase,
                                height: 0.1,
                              ),
                            ),
                            TextSpan(
                              text: "\nConcert ",
                              style: TextStyle(
                                color: ColorsBase.orangeBase,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                                height: 0.1,
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
                    ),
                    ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return CardWidget(
                          index: index,
                        );
                      },
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.isLoading.value
                          ? 10
                          : controller.data.value.embedded!.events.length,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
