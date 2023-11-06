import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class EventCardComponent extends StatelessWidget {
  const EventCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            const BoxDecoration(color: ColorsBase.whiteBase, boxShadow: [
          BoxShadow(
            color: ColorsBase.lightGreyBase,
            offset: Offset(
              5,
              5,
            ),
            blurRadius: 10.0,
            spreadRadius: 1,
          ),
        ]),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Payment Successfull"),
                Spacer(),
                Icon(Icons.more_vert)
              ],
            ),
            Divider(),
            Row(
              children: [
                Column(
                  children: [
                    Text("The Eras Tour Taylor Swift "),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text("28 Oktober 2022")
                      ],
                    ),
                    Text("purchase on 28th Feb 2023"),
                  ],
                ),
                Spacer(),
                Image.asset(
                  "assets/images/dump/6367448e-7474-4650-bd2d-02a8f7166ab4_106161_TABLET_LANDSCAPE_LARGE_16_9.jpg",
                  width: 100,
                ),
              ],
            ),
            Text("E-Voucher"),
          ],
        ));
    const Placeholder();
  }
}
