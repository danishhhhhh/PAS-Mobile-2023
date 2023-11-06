import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/checkout_page/component/checkout_button_component.dart';
import 'package:pas_mobile/app/pages/checkout_page/component/payment_component.dart';
import 'package:pas_mobile/app/pages/checkout_page/component/ticket_component.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      appBar: AppBar(backgroundColor: ColorsBase.whiteBase),
      body: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
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
