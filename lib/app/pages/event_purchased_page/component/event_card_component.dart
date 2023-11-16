import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class EventCardComponent extends StatelessWidget {
  const EventCardComponent(
      {super.key, required this.name, required this.image, required this.date});

  final String name, image, date;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: ColorsBase.whiteBase, boxShadow: [
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
                  child: Text(
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
          Divider(
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
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: width * 0.5,
                      child: Text(
                        name,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: ColorsBase.greyBase,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            date,
                            style: TextStyle(
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
                        style: TextStyle(color: ColorsBase.greyBase),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    image,
                    width: width / 3.5,
                  ),
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
              child: Text(
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
