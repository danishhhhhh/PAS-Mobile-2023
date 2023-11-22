import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/data/event_data.dart';
import 'package:pas_mobile/app/models/event_model.dart';
import 'package:pas_mobile/app/pages/checkout_page/checkout_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class CheckoutButtonComponent extends GetView<CheckoutPageController> {
  const CheckoutButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Obx(
          () => (controller.isPayment.value)
              ? Container()
              : Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2.5),
                  decoration: BoxDecoration(
                      color: ColorsBase.whiteBase,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Please select your payment first",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: ColorsBase.redBase,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
        ),
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              if (controller.orderType.value != "") {
                controller.isPayment.value = true;
                addEvent(
                  EventModel(
                    name_event: controller.argumentData["eventName"],
                    image_event: controller.argumentData["eventImage"],
                    date_event: controller.argumentData["eventDate"],
                  ),
                );
                Get.offAllNamed("/menu");
              } else {
                controller.isPayment.value = false;
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorsBase.orangeBase,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text(
              "Checkout",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: ColorsBase.whiteBase,
                fontSize: 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}
