import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const SingleChildScrollView(
              child: Column(
                children: [
                  TicketComponent(),
                  PaymentComponent(),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsBase.orangeBase,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          color: ColorsBase.whiteBase,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
