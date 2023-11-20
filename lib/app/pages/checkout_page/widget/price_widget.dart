import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/checkout_page/checkout_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class PriceWidget extends GetView<CheckoutPageController> {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.onClickPrice.toggle();
      },
      child: Obx(
              () =>
          controller.onClickPrice.value ? Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Price :",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: ColorsBase.whiteBase,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "${controller.ticketCount.value} x \$ ${controller.argumentData["eventPrice"]}",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: ColorsBase.whiteBase,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: ColorsBase.whiteBase,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_drop_down_rounded, color: ColorsBase.whiteBase),
                    Text(
                      "\$ ${controller.totalPrice()}",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: ColorsBase.whiteBase,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ) : Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Text(
            "Total Price",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: ColorsBase.whiteBase,
            ),
          ),
          const Spacer(),
          Icon(Icons.arrow_drop_up_rounded, color: ColorsBase.whiteBase),
          Text(
            "\$ ${controller.totalPrice()}",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: ColorsBase.whiteBase,
            ),
          ),
        ],
      ),
    ),)
    ,
    );
  }
}
