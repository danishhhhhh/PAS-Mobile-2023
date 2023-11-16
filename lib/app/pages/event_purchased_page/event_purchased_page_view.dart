import 'package:flutter/material.dart';
import 'package:pas_mobile/app/data/event_data.dart';
import 'package:pas_mobile/app/pages/event_purchased_page/component/event_card_component.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class EventPurchasedPageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top:  height * 0.1125),
                child: ListView.builder(
                  itemCount: event_purchased.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return EventCardComponent(
                      image: event_purchased[index].image_event,
                      name: event_purchased[index].name_event,
                      date: event_purchased[index].date_event,
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                color: ColorsBase.whiteBase,
                width: double.maxFinite,
                child: Text(
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
