import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/detail_page/component/bottom_container.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_controller.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/ticket_counter_widget.dart';
import 'package:pas_mobile/common/widget/back_button.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/purchased_button.dart';

class DetailPageView extends GetView<DetailPageController> {
  const DetailPageView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(
                  children: [
                    SingleChildScrollView(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: height * 0.4,
                            child: Image.network(
                              controller.data.value.images![0].url,
                              fit: BoxFit.cover,
                            ),
                          ),
                          BottomContainer(
                            eventName: controller.data.value.name,
                            eventPromoter: controller.data.value.promoter!.name,
                            eventVenue: controller.data.value.embedded!.venues[0].name,
                            eventDate: controller.data.value.dates!.start.localDate,
                            eventTime: controller.data.value.dates!.start.localTime,
                            eventInfo: controller.data.value.info ??
                                "No Information for this event",
                          ),
                        ],
                      ),
                    ),
                    const BackButtonWidget(),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            PurchasedButton(),
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
