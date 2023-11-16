import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/checkout_page/component/checkout_button_component.dart';
import 'package:pas_mobile/app/pages/checkout_page/component/payment_component.dart';
import 'package:pas_mobile/app/pages/checkout_page/component/ticket_component.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      appBar: AppBar(backgroundColor: ColorsBase.whiteBase),
      body: Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  TicketComponent(),
                  PaymentComponent(),
                ],
              ),
            ),
            CheckoutButtonComponent(),
          ],
        ),
      ),
    );
  }
}
