import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/detail_page/component/bottom_container.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_controller.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/back_button.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/purchased_button.dart';

class DetailPageView extends StatelessWidget {
  const DetailPageView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final DetailPageController controller = Get.put(DetailPageController());
    final String eventImageURL =
        controller.data.value.embedded!.events[0].images[0].url;
    final String eventName = controller.data.value.embedded!.events[0].name;
    final String eventPromoter = controller
        .data.value.embedded!.events[0].promoter.name;
    final String eventVenue =
        controller.data.value.embedded!.events[0].embedded.venues[0].name;
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(
                  children: [
                    SizedBox(
                      height: height * 0.4,
                      child: Image.network(
                        eventImageURL,
                        fit: BoxFit.cover,
                      ),
                    ),
                    BottomContainer(
                      eventName: eventName,
                      eventPromoter: eventPromoter,
                      eventVenue: eventVenue,
                      eventDate: controller
                          .data.value.embedded!.events[0].dates.start.localDate,
                      eventTime: controller
                          .data.value.embedded!.events[0].dates.start.localTime,
                      eventInfo:
                          controller.data.value.embedded!.events[0].info ??
                              "No Information for this event",
                    ),
                    const BackButtonArrow(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: PurchasedButton(),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
