import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class TicketCounterWidget extends GetView<DetailPageController> {
  const TicketCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Obx(
          () => (controller.ticketCount.value > 1) ? InkWell(
            onTap: () {
              controller.removeTicket();
            },
            child: Container(
              child: Icon(
                Icons.remove,
                color: ColorsBase.whiteBase,
              ),
              decoration: BoxDecoration(
                  color: ColorsBase.orangeBase,
                  borderRadius: BorderRadius.circular(100)),
            ),
          ) : Container(),
        ),
        SizedBox(width: 10),
        Container(
          width: 50,
          decoration: BoxDecoration(
              color: ColorsBase.whiteBase,
              border: Border.all(
                width: 1,
                color: ColorsBase.orangeBase,
              ),
              borderRadius: BorderRadius.circular(7.5)),
          child: Obx(
            () => Text(
              controller.ticketCount.value.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: ColorsBase.blackBase,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(width: 10),
        InkWell(
          onTap: () {
            controller.addTicket();
          },
          child: Container(
            child: Icon(
              Icons.add,
              color: ColorsBase.whiteBase,
            ),
            decoration: BoxDecoration(
                color: ColorsBase.orangeBase,
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ],
    );
  }
}
