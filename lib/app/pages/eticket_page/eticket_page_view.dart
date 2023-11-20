import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/eticket_page/eticket_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:pas_mobile/common/widget/back_button.dart';

class ETicketPageView extends GetView<ETicketPageController> {
  const ETicketPageView({super.key, this.eventName = "No Data"});

  final String eventName;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.1,
                vertical: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: ColorsBase.whiteBase,
                    width: double.maxFinite,
                    child: Text(
                      textAlign: TextAlign.center,
                      "E-Ticket",
                      style: TextStyle(
                        color: ColorsBase.purpleDarkBase,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: width * 0.55,
                        margin: EdgeInsets.only(bottom: 30),
                        child: Text(
                          "Scan this QR code to get your e-ticket! Please, enjoy :)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: ColorsBase.purpleLightBase,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                controller.imageURL.value,
                              ),
                              clipBehavior: Clip.hardEdge,
                            ),
                            SizedBox(height: 10),
                            Text(
                              eventName ?? "No Data",
                              style: TextStyle(
                                color: ColorsBase.whiteBase,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        width: width * 0.75,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: ColorsBase.purpleLightBase,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      SizedBox(height: height * 0.05),
                      Divider(),
                      SizedBox(height: height * 0.05),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outlined,
                        size: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Do not display or share this QR code.",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            BackButtonWidget(),
          ],
        ),
      ),
    );
  }
}
