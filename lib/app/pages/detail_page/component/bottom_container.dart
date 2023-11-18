import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/detail_page/widget/info_widget.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer(
      {super.key,
      required this.eventName,
      required this.eventPromoter,
      required this.eventVenue,
      required this.eventDate,
      required this.eventTime,
      required this.eventInfo});

  final String eventName,
      eventPromoter,
      eventVenue,
      eventDate,
      eventTime,
      eventInfo;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      maxChildSize: 1.0,
      minChildSize: 0.65,
      builder: (context, controller) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.125, vertical: height * 0.05),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: ColorsBase.whiteBase,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: height * 0.025),
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
                    eventName,
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
                  color: ColorsBase.greyBase,
                ),
                Text(
                  eventPromoter,
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
                  name: eventVenue,
                ),
                InfoWidget(
                  icon: Icons.calendar_today_outlined,
                  name: eventDate,
                ),
                InfoWidget(
                  icon: Icons.access_time_outlined,
                  name: eventTime,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Info",
                    style: TextStyle(
                        color: ColorsBase.blackBase,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ),
                Text(
                  eventInfo,
                  style: TextStyle(
                      color: ColorsBase.greyBase,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
