import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/info_widget.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      maxChildSize: 1.0,
      minChildSize: 0.65,
      builder: (context, controller) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              color: ColorsBase.whiteBase,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: SingleChildScrollView(
            controller: controller,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "BUY TICKET",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: ColorsBase.purpleDarkBase,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Taylor Swift",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: ColorsBase.orangeBase,
                      fontSize: 28,
                    ),
                  ),
                ),
                Divider(
                  height: 50,
                ),
                Text(
                  "LIVE NATION MUSIC",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: ColorsBase.blackBase),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Promotor",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: ColorsBase.greyBase),
                  ),
                ),
                InfoWidget(
                  icon: Icons.location_on,
                  name: "Gelora Bung Karno",
                ),
                InfoWidget(
                  icon: Icons.calendar_today_outlined,
                  name: "28 Feb 2023 ",
                ),
                InfoWidget(
                  icon: Icons.access_time_outlined,
                  name: "19.00-22.00",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: ColorsBase.blackBase,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 18
                    ),
                  ),
                ),
                Text(
                  "Get ready to be swept off your feet by the enchanting melodies and captivating stage presence of the global superstar, Taylor Swift! Taylor Swift's Spectacular Tour Concert is a musical extravaganza like no other, promising an unforgettable night filled with emotion, energy, and pure entertainment.",
                  style: TextStyle(
                      color: ColorsBase.greyBase,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
