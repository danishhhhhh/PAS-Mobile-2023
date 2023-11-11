import 'package:pas_mobile/app/models/event_model.dart';

List<EventModel> event_purchased = [
  EventModel(
    name_event: "The Eras Tour Taylor Swift",
    image_event:
        "https://s1.ticketm.net/dam/a/71d/ad124f24-1532-4dae-937f-d32c3340471d_RETINA_PORTRAIT_3_2.jpg",
    date_event: "28 Feb 2023",
  ),
  EventModel(
    name_event: "The Eras Tour Taylor Swift",
    image_event:
        "https://s1.ticketm.net/dam/a/71d/ad124f24-1532-4dae-937f-d32c3340471d_RETINA_PORTRAIT_3_2.jpg",
    date_event: "28 Feb 2023",
  ),
  EventModel(
    name_event: "The Eras Tour Taylor Swift",
    image_event:
        "https://s1.ticketm.net/dam/a/71d/ad124f24-1532-4dae-937f-d32c3340471d_RETINA_PORTRAIT_3_2.jpg",
    date_event: "28 Feb 2023",
  ),
];

addEvent(EventModel eventModel) {
  event_purchased.add(eventModel);
}
