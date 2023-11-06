import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class EventCardComponent extends StatelessWidget {
  const EventCardComponent(
      {super.key, required this.name, required this.image, required this.date});

  final String name, image, date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(color: ColorsBase.whiteBase, boxShadow: [
        BoxShadow(
          color: ColorsBase.lightGreyBase,
          offset: Offset(
            5,
            5,
          ),
          blurRadius: 10,
          spreadRadius: 1,
        ),
      ]),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: ColorsBase.lightGreenBase,
                      border: Border.all(color: ColorsBase.greenBase, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Payment Successful",
                    style: TextStyle(
                      color: ColorsBase.darkGreenBase,
                      fontFamily: "Poppins",
                      fontSize: 7,
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.more_vert,
                  size: 16,
                )
              ],
            ),
          ),
          const Divider(
            height: 0,
            color: ColorsBase.lightGreyBase,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: ColorsBase.greyBase,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            date,
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              color: ColorsBase.greyBase,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        "purchased on ${DateFormat("dd MMM yyyy").format(DateTime.now())}",
                        style: const TextStyle(color: ColorsBase.greyBase),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  image,
                  width: 100,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                color: ColorsBase.orangeBase,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(7),
              child: const Text(
                "E-Voucher",
                style: TextStyle(
                  color: ColorsBase.whiteBase,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
