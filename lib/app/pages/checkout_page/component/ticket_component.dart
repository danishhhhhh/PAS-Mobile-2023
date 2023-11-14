import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/checkout_page/checkout_page_controller.dart';
import 'package:pas_mobile/app/pages/checkout_page/widget/ticket_info.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class TicketComponent extends GetView<CheckoutPageController> {
  const TicketComponent({super.key});
  final price = '100';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              height: height / 4,
              decoration: const BoxDecoration(
                  color: ColorsBase.purpleLightBase,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.network(
                    controller.argumentData['eventImage'],
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: height / 6,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorsBase.purpleLightBase.withOpacity(1),
                          ColorsBase.purpleLightBase.withOpacity(0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      controller.argumentData['eventName'],
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: ColorsBase.whiteBase),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          color: ColorsBase.purpleLightBase,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                const SizedBox(
                  height: 40,
                  width: 20,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        color: ColorsBase.whiteBase),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              (constraints.constrainWidth() / 30).floor(),
                              (index) => const SizedBox(
                                    height: 2,
                                    width: 20,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                  )),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  width: 20,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        color: ColorsBase.whiteBase),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: ColorsBase.purpleLightBase,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 2,
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                ),
                children: [
                  TicketInfo(
                    image: 'assets/images/icons/user.svg',
                    text: "Qwerty",
                  ),
                  TicketInfo(
                    image: 'assets/images/icons/map_pointer.svg',
                    text: controller.argumentData['eventVenue'],
                  ),
                  TicketInfo(
                    image: 'assets/images/icons/calendar.svg',
                    text: controller.argumentData['eventDate'],
                  ),
                  TicketInfo(
                    image: 'assets/images/icons/clock.svg',
                    text: controller.argumentData['eventTime'],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 2,
                  width: double.maxFinite,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    const Text(
                      "Total Price",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: ColorsBase.whiteBase,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$ ${controller.argumentData['eventPrice']}",
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: ColorsBase.whiteBase,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
