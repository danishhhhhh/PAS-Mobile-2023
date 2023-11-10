import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/data/event_data.dart';
import 'package:pas_mobile/app/pages/event_purchased_page/component/event_card_component.dart';
import 'package:pas_mobile/app/pages/event_purchased_page/event_purchased_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class EventPurchasedPageView extends StatelessWidget {
  final EventPurchasedPageController controller =
      Get.put(EventPurchasedPageController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top:  height / 15),
                child: ListView.builder(
                  itemCount: EventData().event.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return EventCardComponent(
                      image: EventData().event[index].image_event,
                      name: EventData().event[index].name_event,
                      date: EventData().event[index].date_event,
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                color: ColorsBase.whiteBase,
                width: double.maxFinite,
                child: const Text(
                  textAlign: TextAlign.center,
                  "Your Ticket Purchased",
                  style: TextStyle(
                    color: ColorsBase.purpleDarkBase,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
