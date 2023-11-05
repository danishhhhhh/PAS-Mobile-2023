import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/checkout_page/widget/payment_selector.dart';
import 'package:pas_mobile/app/pages/checkout_page/widget/title_payment.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class PaymentComponent extends StatelessWidget {
  const PaymentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitlePayment(title: "E-Wallet"),
        Divider(height: 2, color: ColorsBase.lightGreyBase,),
        PaymentSelector(image: "assets/images/payment/gopay_logo.png", name: "GoPay", value: "gopay"),
        Divider(height: 2, color: ColorsBase.lightGreyBase,),
        PaymentSelector(image: "assets/images/payment/dana_logo.png", name: "Dana", value: "dana"),
        Divider(height: 2, color: ColorsBase.lightGreyBase,),
        PaymentSelector(image: "assets/images/payment/ovo_logo.png", name: "OVO", value: "ovo"),
        Divider(height: 2, color: ColorsBase.lightGreyBase,),

        TitlePayment(title: "Bank Transfer"),
        Divider(height: 2, color: ColorsBase.lightGreyBase,),
        PaymentSelector(image: "assets/images/payment/mandiri_logo.png", name: "Bank Mandiri", value: "mandiri"),
        Divider(height: 2, color: ColorsBase.lightGreyBase,),
        PaymentSelector(image: "assets/images/payment/bca_logo.png", name: "Bank BCA", value: "bca"),
        Divider(height: 2, color: ColorsBase.lightGreyBase,),
      ],
    );
  }
}
