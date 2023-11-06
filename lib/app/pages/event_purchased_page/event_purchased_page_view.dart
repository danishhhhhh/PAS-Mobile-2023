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
    print(EventData().event.length);
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Your Ticket Purchased",
                  style: TextStyle(
                    color: ColorsBase.purpleDarkBase,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              ListView.builder(
                itemCount: EventData().event.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final product = EventData().event[index];
                  return EventCardComponent();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
