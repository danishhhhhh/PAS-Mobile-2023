import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/data/payment_data.dart';
import 'package:pas_mobile/app/pages/checkout_page/checkout_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class CheckoutButtonComponent extends StatelessWidget {
  const CheckoutButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var payment = PaymentData().payment;
    final CheckoutPageController controller = Get.put(CheckoutPageController());

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ColorsBase.lightGreyBase, width: 1),
              color: ColorsBase.whiteBase,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Obx(() => Image.asset(
                      payment[int.parse(controller.orderType.value)].image,
                      height: 24,
                    ),
                  ),
                ),
                Obx(() => Text(
                    payment[int.parse(controller.orderType.value)].name,
                    style: const TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        color: ColorsBase.purpleDarkBase,
                        fontSize: 14),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: height / 50,
                  width: 2,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: ColorsBase.orangeBase,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "\$${controller.argumentData['eventPrice']}",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        color: ColorsBase.purpleDarkBase,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorsBase.orangeBase,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: const Text(
              "Checkout",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
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
