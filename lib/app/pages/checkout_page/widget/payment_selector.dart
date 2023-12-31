import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/checkout_page/checkout_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class PaymentSelector extends StatelessWidget {
  PaymentSelector(
      {super.key,
      required this.image,
      required this.name,
      required this.value});

  final String image, name;
  final RxString value;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckoutPageController>(

      builder: (controller) {
        return InkWell(
          onTap: () {
            if(controller.orderType.value == value.value){
              controller.setDefaultOrderType();
            } else {
              controller.setOrderType(value.value);
            }
          },
          child: Row(
            children: [
              Image.asset(
                image,
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  name,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      color: ColorsBase.purpleDarkBase,
                      fontSize: 14),
                ),
              ),
              const Spacer(),
              Radio(
                value: value.value,
                groupValue: controller.orderType.value,
                activeColor: ColorsBase.orangeBase,
                onChanged: (val) {},
              ),
            ],
          ),
        );
      },
    );
  }
}
