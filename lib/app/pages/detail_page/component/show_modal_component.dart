import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_controller.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/ticket_counter_widget.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class ShowModalComponent extends GetView<DetailPageController> {
  const ShowModalComponent({super.key, required this.context});
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.2,
      margin: EdgeInsets.symmetric(horizontal: width * 0.125),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ticket Amount : ",
                  style: TextStyle(
                    color: ColorsBase.purpleDarkBase,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TicketCounterWidget(),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Get.toNamed(
                  "/checkout",
                  arguments: {
                    "eventName": controller.data.value.name,
                    "eventImage": controller.data.value.images![0].url,
                    "eventVenue":
                        controller.data.value.embedded!.venues[0].name,
                    "eventDate": controller.data.value.dates!.start.localDate,
                    "eventTime": controller.data.value.dates!.start.localTime,
                    "eventPrice": controller.data.value.priceRanges![0].min,
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsBase.redBase,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                "BUY",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  color: ColorsBase.whiteBase,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.01),
        ],
      ),
    );
    ;
  }
}
