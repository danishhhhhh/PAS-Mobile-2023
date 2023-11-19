import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class PurchasedButton extends StatelessWidget {
  const PurchasedButton(
      {super.key,
      required this.eventName,
        required this.eventImage,
      required this.eventVenue,
      required this.eventDate,
      required this.eventTime,
      required this.eventPrice});

  final String eventName, eventImage, eventVenue, eventDate, eventTime;
  final double eventPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed("/checkout", arguments:
            {"eventName": eventName,
              "eventImage": eventImage,
              "eventVenue": eventVenue,
              "eventDate": eventDate,
              "eventTime": eventTime,
              "eventPrice": eventPrice,
            },
          );
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
            backgroundColor: ColorsBase.redBase,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          "BUY NOW",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            color: ColorsBase.whiteBase,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
