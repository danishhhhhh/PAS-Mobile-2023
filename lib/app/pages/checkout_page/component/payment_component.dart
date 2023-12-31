import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/data/payment_data.dart';
import 'package:pas_mobile/app/pages/checkout_page/widget/payment_selector.dart';
import 'package:pas_mobile/app/pages/checkout_page/widget/title_payment.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class PaymentComponent extends StatelessWidget {
  const PaymentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var payment = PaymentData().payment;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitlePayment(title: "E-Wallet"),
          Divider(height: 2, color: ColorsBase.lightGreyBase,),
          PaymentSelector(image: payment[0].image, name: payment[0].name, value: "0".obs),
          Divider(height: 2, color: ColorsBase.lightGreyBase,),
          PaymentSelector(image: payment[1].image, name: payment[1].name, value: "1".obs),
          Divider(height: 2, color: ColorsBase.lightGreyBase,),
          PaymentSelector(image: payment[2].image, name: payment[2].name, value: "2".obs),
          Divider(height: 2, color: ColorsBase.lightGreyBase,),

          const TitlePayment(title: "Bank Transfer"),
          Divider(height: 2, color: ColorsBase.lightGreyBase,),
          PaymentSelector(image: payment[3].image, name: payment[3].name, value: "3".obs),
          Divider(height: 2, color: ColorsBase.lightGreyBase,),
          PaymentSelector(image: payment[4].image, name: payment[4].name, value: "4".obs),
          Divider(height: 2, color: ColorsBase.lightGreyBase,),
        ],
      ),
    );
  }
}
