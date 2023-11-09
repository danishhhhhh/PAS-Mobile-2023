import 'dart:convert';

TicketModel ticketModelFromJson(String str) =>
    TicketModel.fromJson(json.decode(str));

class TicketModel {
  TicketEmbedded embedded;

  TicketModel({required this.embedded});

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      TicketModel(embedded: TicketEmbedded.fromJson(json["_embedded"]));
}

class TicketEmbedded {
  List<Event> events;

  TicketEmbedded({
    required this.events,
  });

  factory TicketEmbedded.fromJson(Map<String, dynamic> json) => TicketEmbedded(
      events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))));
}

/*EVENT*/
class Event {
  String name;
  String? info;
  Dates dates;
  Promoter promoter;
  Embedded embedded;
  List<Image> images;
  List<PriceRange>? priceRanges;

  Event({
    required this.name,
    required this.dates,
    required this.promoter,
    required this.embedded,
    required this.images,
    required this.priceRanges,
    this.info,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    name: json["name"],
    info: json["info"],
    dates: Dates.fromJson(json["dates"]),
    promoter: Promoter.fromJson(json["promoter"]),
    embedded: Embedded.fromJson(json["_embedded"]),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    priceRanges: (json["priceRanges"] as List<dynamic>?)
        ?.map((x) => PriceRange.fromJson(x))
        .toList(),
  );
}

/*DATE*/
class Dates {
  Start start;

  Dates({required this.start});

  factory Dates.fromJson(Map<String, dynamic> json) =>
      Dates(start: Start.fromJson(json["start"]));
}

class Start {
  String localDate, localTime;

  Start({required this.localDate, required this.localTime});

  factory Start.fromJson(Map<String, dynamic> json) =>
      Start(localDate: json["localDate"], localTime: json["localTime"]);
}

/*PROMOTER*/
class Promoter {
  String name;

  Promoter({required this.name});

  factory Promoter.fromJson(Map<String, dynamic> json) =>
      Promoter(name: json["name"]);
}

/*PRICE*/
class PriceRange {
  String type;
  String currency;
  double min;
  double max;

  PriceRange({
    required this.type,
    required this.currency,
    required this.min,
    required this.max,
  });

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
    type: json["type"],
    currency: json["currency"],
    min: json["min"].toDouble(),
    max: json["max"].toDouble(),
  );
}

/*IMAGES*/
class Image {
  String ratio, url;
  int width, height;

  Image(
      {required this.ratio,
        required this.url,
        required this.width,
        required this.height});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
      ratio: json["ratio"],
      url: json["url"],
      width: json["width"],
      height: json["height"]);
}

class Embedded {
  List<Venue> venues;

  Embedded({
    required this.venues,
  });

  factory Embedded.fromJson(Map<String, dynamic> json) => Embedded(
      venues: List<Venue>.from(json["venues"].map((x) => Venue.fromJson(x))));
}

/*VENUE*/
class Venue {
  String name;

  Venue({required this.name});

  factory Venue.fromJson(Map<String, dynamic> json) =>
      Venue(name: json["name"]);
}