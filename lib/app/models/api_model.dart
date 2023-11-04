
import 'dart:convert';

ResponseModel responseModelFromJson(String str) => ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

class ResponseModel {
  ResponseModelEmbedded embedded;
  ResponseModelLinks links;
  Page page;

  ResponseModel({
    required this.embedded,
    required this.links,
    required this.page,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
    embedded: ResponseModelEmbedded.fromJson(json["_embedded"]),
    links: ResponseModelLinks.fromJson(json["_links"]),
    page: Page.fromJson(json["page"]),
  );

  Map<String, dynamic> toJson() => {
    "_embedded": embedded.toJson(),
    "_links": links.toJson(),
    "page": page.toJson(),
  };
}

class ResponseModelEmbedded {
  List<Event> events;

  ResponseModelEmbedded({
    required this.events,
  });

  factory ResponseModelEmbedded.fromJson(Map<String, dynamic> json) => ResponseModelEmbedded(
    events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "events": List<dynamic>.from(events.map((x) => x.toJson())),
  };
}

class Event {
  String name;
  EventType type;
  String id;
  bool test;
  String url;
  Locale locale;
  List<Image> images;
  Sales sales;
  Dates dates;
  List<Classification> classifications;
  Promoter promoter;
  List<Promoter> promoters;
  String info;
  String pleaseNote;
  List<PriceRange> priceRanges;
  Seatmap seatmap;
  Accessibility accessibility;
  TicketLimit ticketLimit;
  AgeRestrictions ageRestrictions;
  DoorsTimes doorsTimes;
  Ticketing ticketing;
  EventLinks links;
  EventEmbedded embedded;
  List<Product> products;
  List<Outlet> outlets;

  Event({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.images,
    required this.sales,
    required this.dates,
    required this.classifications,
    required this.promoter,
    required this.promoters,
    required this.info,
    required this.pleaseNote,
    required this.priceRanges,
    required this.seatmap,
    required this.accessibility,
    required this.ticketLimit,
    required this.ageRestrictions,
    required this.doorsTimes,
    required this.ticketing,
    required this.links,
    required this.embedded,
    required this.products,
    required this.outlets,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    name: json["name"],
    type: eventTypeValues.map[json["type"]]!,
    id: json["id"],
    test: json["test"],
    url: json["url"],
    locale: localeValues.map[json["locale"]]!,
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    sales: Sales.fromJson(json["sales"]),
    dates: Dates.fromJson(json["dates"]),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    promoter: Promoter.fromJson(json["promoter"]),
    promoters: List<Promoter>.from(json["promoters"].map((x) => Promoter.fromJson(x))),
    info: json["info"],
    pleaseNote: json["pleaseNote"],
    priceRanges: List<PriceRange>.from(json["priceRanges"].map((x) => PriceRange.fromJson(x))),
    seatmap: Seatmap.fromJson(json["seatmap"]),
    accessibility: Accessibility.fromJson(json["accessibility"]),
    ticketLimit: TicketLimit.fromJson(json["ticketLimit"]),
    ageRestrictions: AgeRestrictions.fromJson(json["ageRestrictions"]),
    doorsTimes: DoorsTimes.fromJson(json["doorsTimes"]),
    ticketing: Ticketing.fromJson(json["ticketing"]),
    links: EventLinks.fromJson(json["_links"]),
    embedded: EventEmbedded.fromJson(json["_embedded"]),
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    outlets: List<Outlet>.from(json["outlets"].map((x) => Outlet.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": eventTypeValues.reverse[type],
    "id": id,
    "test": test,
    "url": url,
    "locale": localeValues.reverse[locale],
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "sales": sales.toJson(),
    "dates": dates.toJson(),
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
    "promoter": promoter.toJson(),
    "promoters": List<dynamic>.from(promoters.map((x) => x.toJson())),
    "info": info,
    "pleaseNote": pleaseNote,
    "priceRanges": List<dynamic>.from(priceRanges.map((x) => x.toJson())),
    "seatmap": seatmap.toJson(),
    "accessibility": accessibility.toJson(),
    "ticketLimit": ticketLimit.toJson(),
    "ageRestrictions": ageRestrictions.toJson(),
    "doorsTimes": doorsTimes.toJson(),
    "ticketing": ticketing.toJson(),
    "_links": links.toJson(),
    "_embedded": embedded.toJson(),
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "outlets": List<dynamic>.from(outlets.map((x) => x.toJson())),
  };
}

class Accessibility {
  int ticketLimit;
  String info;
  String url;
  String urlText;

  Accessibility({
    required this.ticketLimit,
    required this.info,
    required this.url,
    required this.urlText,
  });

  factory Accessibility.fromJson(Map<String, dynamic> json) => Accessibility(
    ticketLimit: json["ticketLimit"],
    info: json["info"],
    url: json["url"],
    urlText: json["urlText"],
  );

  Map<String, dynamic> toJson() => {
    "ticketLimit": ticketLimit,
    "info": info,
    "url": url,
    "urlText": urlText,
  };
}

class AgeRestrictions {
  bool legalAgeEnforced;

  AgeRestrictions({
    required this.legalAgeEnforced,
  });

  factory AgeRestrictions.fromJson(Map<String, dynamic> json) => AgeRestrictions(
    legalAgeEnforced: json["legalAgeEnforced"],
  );

  Map<String, dynamic> toJson() => {
    "legalAgeEnforced": legalAgeEnforced,
  };
}

class Classification {
  bool primary;
  Genre segment;
  Genre genre;
  Genre subGenre;
  Genre type;
  Genre subType;
  bool family;

  Classification({
    required this.primary,
    required this.segment,
    required this.genre,
    required this.subGenre,
    required this.type,
    required this.subType,
    required this.family,
  });

  factory Classification.fromJson(Map<String, dynamic> json) => Classification(
    primary: json["primary"],
    segment: Genre.fromJson(json["segment"]),
    genre: Genre.fromJson(json["genre"]),
    subGenre: Genre.fromJson(json["subGenre"]),
    type: Genre.fromJson(json["type"]),
    subType: Genre.fromJson(json["subType"]),
    family: json["family"],
  );

  Map<String, dynamic> toJson() => {
    "primary": primary,
    "segment": segment.toJson(),
    "genre": genre.toJson(),
    "subGenre": subGenre.toJson(),
    "type": type.toJson(),
    "subType": subType.toJson(),
    "family": family,
  };
}

class Genre {
  String id;
  String name;

  Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class Dates {
  Start start;
  DoorsTimes initialStartDate;
  Timezone timezone;
  Status status;
  bool spanMultipleDays;

  Dates({
    required this.start,
    required this.initialStartDate,
    required this.timezone,
    required this.status,
    required this.spanMultipleDays,
  });

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
    start: Start.fromJson(json["start"]),
    initialStartDate: DoorsTimes.fromJson(json["initialStartDate"]),
    timezone: timezoneValues.map[json["timezone"]]!,
    status: Status.fromJson(json["status"]),
    spanMultipleDays: json["spanMultipleDays"],
  );

  Map<String, dynamic> toJson() => {
    "start": start.toJson(),
    "initialStartDate": initialStartDate.toJson(),
    "timezone": timezoneValues.reverse[timezone],
    "status": status.toJson(),
    "spanMultipleDays": spanMultipleDays,
  };
}

class DoorsTimes {
  DateTime localDate;
  String localTime;
  DateTime dateTime;

  DoorsTimes({
    required this.localDate,
    required this.localTime,
    required this.dateTime,
  });

  factory DoorsTimes.fromJson(Map<String, dynamic> json) => DoorsTimes(
    localDate: DateTime.parse(json["localDate"]),
    localTime: json["localTime"],
    dateTime: DateTime.parse(json["dateTime"]),
  );

  Map<String, dynamic> toJson() => {
    "localDate": "${localDate.year.toString().padLeft(4, '0')}-${localDate.month.toString().padLeft(2, '0')}-${localDate.day.toString().padLeft(2, '0')}",
    "localTime": localTime,
    "dateTime": dateTime.toIso8601String(),
  };
}

class Start {
  DateTime localDate;
  String localTime;
  DateTime dateTime;
  bool dateTbd;
  bool dateTba;
  bool timeTba;
  bool noSpecificTime;

  Start({
    required this.localDate,
    required this.localTime,
    required this.dateTime,
    required this.dateTbd,
    required this.dateTba,
    required this.timeTba,
    required this.noSpecificTime,
  });

  factory Start.fromJson(Map<String, dynamic> json) => Start(
    localDate: DateTime.parse(json["localDate"]),
    localTime: json["localTime"],
    dateTime: DateTime.parse(json["dateTime"]),
    dateTbd: json["dateTBD"],
    dateTba: json["dateTBA"],
    timeTba: json["timeTBA"],
    noSpecificTime: json["noSpecificTime"],
  );

  Map<String, dynamic> toJson() => {
    "localDate": "${localDate.year.toString().padLeft(4, '0')}-${localDate.month.toString().padLeft(2, '0')}-${localDate.day.toString().padLeft(2, '0')}",
    "localTime": localTime,
    "dateTime": dateTime.toIso8601String(),
    "dateTBD": dateTbd,
    "dateTBA": dateTba,
    "timeTBA": timeTba,
    "noSpecificTime": noSpecificTime,
  };
}

class Status {
  Code code;

  Status({
    required this.code,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    code: codeValues.map[json["code"]]!,
  );

  Map<String, dynamic> toJson() => {
    "code": codeValues.reverse[code],
  };
}

enum Code {
  ONSALE,
  RESCHEDULED
}

final codeValues = EnumValues({
  "onsale": Code.ONSALE,
  "rescheduled": Code.RESCHEDULED
});

enum Timezone {
  AMERICA_CHICAGO,
  AMERICA_INDIANAPOLIS,
  AMERICA_LOS_ANGELES,
  AMERICA_NEW_YORK
}

final timezoneValues = EnumValues({
  "America/Chicago": Timezone.AMERICA_CHICAGO,
  "America/Indianapolis": Timezone.AMERICA_INDIANAPOLIS,
  "America/Los_Angeles": Timezone.AMERICA_LOS_ANGELES,
  "America/New_York": Timezone.AMERICA_NEW_YORK
});

class EventEmbedded {
  List<Venue> venues;
  List<Attraction> attractions;

  EventEmbedded({
    required this.venues,
    required this.attractions,
  });

  factory EventEmbedded.fromJson(Map<String, dynamic> json) => EventEmbedded(
    venues: List<Venue>.from(json["venues"].map((x) => Venue.fromJson(x))),
    attractions: List<Attraction>.from(json["attractions"].map((x) => Attraction.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "venues": List<dynamic>.from(venues.map((x) => x.toJson())),
    "attractions": List<dynamic>.from(attractions.map((x) => x.toJson())),
  };
}

class Attraction {
  String name;
  AttractionType type;
  String id;
  bool test;
  String url;
  Locale locale;
  ExternalLinks externalLinks;
  List<String> aliases;
  List<Image> images;
  List<Classification> classifications;
  UpcomingEvents upcomingEvents;
  AttractionLinks links;

  Attraction({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.externalLinks,
    required this.aliases,
    required this.images,
    required this.classifications,
    required this.upcomingEvents,
    required this.links,
  });

  factory Attraction.fromJson(Map<String, dynamic> json) => Attraction(
    name: json["name"],
    type: attractionTypeValues.map[json["type"]]!,
    id: json["id"],
    test: json["test"],
    url: json["url"],
    locale: localeValues.map[json["locale"]]!,
    externalLinks: ExternalLinks.fromJson(json["externalLinks"]),
    aliases: List<String>.from(json["aliases"].map((x) => x)),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    upcomingEvents: UpcomingEvents.fromJson(json["upcomingEvents"]),
    links: AttractionLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": attractionTypeValues.reverse[type],
    "id": id,
    "test": test,
    "url": url,
    "locale": localeValues.reverse[locale],
    "externalLinks": externalLinks.toJson(),
    "aliases": List<dynamic>.from(aliases.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
    "upcomingEvents": upcomingEvents.toJson(),
    "_links": links.toJson(),
  };
}

class ExternalLinks {
  List<Facebook> youtube;
  List<Facebook> twitter;
  List<Facebook> itunes;
  List<Facebook> lastfm;
  List<Facebook> wiki;
  List<Facebook> facebook;
  List<Facebook> spotify;
  List<Musicbrainz> musicbrainz;
  List<Facebook> instagram;
  List<Facebook> homepage;

  ExternalLinks({
    required this.youtube,
    required this.twitter,
    required this.itunes,
    required this.lastfm,
    required this.wiki,
    required this.facebook,
    required this.spotify,
    required this.musicbrainz,
    required this.instagram,
    required this.homepage,
  });

  factory ExternalLinks.fromJson(Map<String, dynamic> json) => ExternalLinks(
    youtube: List<Facebook>.from(json["youtube"].map((x) => Facebook.fromJson(x))),
    twitter: List<Facebook>.from(json["twitter"].map((x) => Facebook.fromJson(x))),
    itunes: List<Facebook>.from(json["itunes"].map((x) => Facebook.fromJson(x))),
    lastfm: List<Facebook>.from(json["lastfm"].map((x) => Facebook.fromJson(x))),
    wiki: List<Facebook>.from(json["wiki"].map((x) => Facebook.fromJson(x))),
    facebook: List<Facebook>.from(json["facebook"].map((x) => Facebook.fromJson(x))),
    spotify: List<Facebook>.from(json["spotify"].map((x) => Facebook.fromJson(x))),
    musicbrainz: List<Musicbrainz>.from(json["musicbrainz"].map((x) => Musicbrainz.fromJson(x))),
    instagram: List<Facebook>.from(json["instagram"].map((x) => Facebook.fromJson(x))),
    homepage: List<Facebook>.from(json["homepage"].map((x) => Facebook.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "youtube": List<dynamic>.from(youtube.map((x) => x.toJson())),
    "twitter": List<dynamic>.from(twitter.map((x) => x.toJson())),
    "itunes": List<dynamic>.from(itunes.map((x) => x.toJson())),
    "lastfm": List<dynamic>.from(lastfm.map((x) => x.toJson())),
    "wiki": List<dynamic>.from(wiki.map((x) => x.toJson())),
    "facebook": List<dynamic>.from(facebook.map((x) => x.toJson())),
    "spotify": List<dynamic>.from(spotify.map((x) => x.toJson())),
    "musicbrainz": List<dynamic>.from(musicbrainz.map((x) => x.toJson())),
    "instagram": List<dynamic>.from(instagram.map((x) => x.toJson())),
    "homepage": List<dynamic>.from(homepage.map((x) => x.toJson())),
  };
}

class Facebook {
  String url;

  Facebook({
    required this.url,
  });

  factory Facebook.fromJson(Map<String, dynamic> json) => Facebook(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}

class Musicbrainz {
  String id;

  Musicbrainz({
    required this.id,
  });

  factory Musicbrainz.fromJson(Map<String, dynamic> json) => Musicbrainz(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class Image {
  Ratio ratio;
  String url;
  int width;
  int height;
  bool fallback;
  Attribution attribution;

  Image({
    required this.ratio,
    required this.url,
    required this.width,
    required this.height,
    required this.fallback,
    required this.attribution,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    ratio: ratioValues.map[json["ratio"]]!,
    url: json["url"],
    width: json["width"],
    height: json["height"],
    fallback: json["fallback"],
    attribution: attributionValues.map[json["attribution"]]!,
  );

  Map<String, dynamic> toJson() => {
    "ratio": ratioValues.reverse[ratio],
    "url": url,
    "width": width,
    "height": height,
    "fallback": fallback,
    "attribution": attributionValues.reverse[attribution],
  };
}

enum Attribution {
  TOM_HEFTER_CDD_APPROVAL_ATTACHED_IN_JIRA_TICKET
}

final attributionValues = EnumValues({
  "Tom Hefter CDD Approval attached in Jira ticket.": Attribution.TOM_HEFTER_CDD_APPROVAL_ATTACHED_IN_JIRA_TICKET
});

enum Ratio {
  THE_169,
  THE_32,
  THE_43
}

final ratioValues = EnumValues({
  "16_9": Ratio.THE_169,
  "3_2": Ratio.THE_32,
  "4_3": Ratio.THE_43
});

class AttractionLinks {
  First self;

  AttractionLinks({
    required this.self,
  });

  factory AttractionLinks.fromJson(Map<String, dynamic> json) => AttractionLinks(
    self: First.fromJson(json["self"]),
  );

  Map<String, dynamic> toJson() => {
    "self": self.toJson(),
  };
}

class First {
  String href;

  First({
    required this.href,
  });

  factory First.fromJson(Map<String, dynamic> json) => First(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

enum Locale {
  EN_US
}

final localeValues = EnumValues({
  "en-us": Locale.EN_US
});

enum AttractionType {
  ATTRACTION
}

final attractionTypeValues = EnumValues({
  "attraction": AttractionType.ATTRACTION
});

class UpcomingEvents {
  int tmr;
  int ticketmaster;
  int total;
  int filtered;
  int moshtix;

  UpcomingEvents({
    required this.tmr,
    required this.ticketmaster,
    required this.total,
    required this.filtered,
    required this.moshtix,
  });

  factory UpcomingEvents.fromJson(Map<String, dynamic> json) => UpcomingEvents(
    tmr: json["tmr"],
    ticketmaster: json["ticketmaster"],
    total: json["_total"],
    filtered: json["_filtered"],
    moshtix: json["moshtix"],
  );

  Map<String, dynamic> toJson() => {
    "tmr": tmr,
    "ticketmaster": ticketmaster,
    "_total": total,
    "_filtered": filtered,
    "moshtix": moshtix,
  };
}

class Venue {
  String name;
  VenueType type;
  String id;
  bool test;
  String url;
  Locale locale;
  String postalCode;
  Timezone timezone;
  City city;
  State state;
  Country country;
  Address address;
  Location location;
  List<Genre> markets;
  List<Dma> dmas;
  UpcomingEvents upcomingEvents;
  AttractionLinks links;
  List<String> aliases;
  List<Image> images;
  Social social;
  BoxOfficeInfo boxOfficeInfo;
  String parkingDetail;
  String accessibleSeatingDetail;
  GeneralInfo generalInfo;
  Ada ada;

  Venue({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.postalCode,
    required this.timezone,
    required this.city,
    required this.state,
    required this.country,
    required this.address,
    required this.location,
    required this.markets,
    required this.dmas,
    required this.upcomingEvents,
    required this.links,
    required this.aliases,
    required this.images,
    required this.social,
    required this.boxOfficeInfo,
    required this.parkingDetail,
    required this.accessibleSeatingDetail,
    required this.generalInfo,
    required this.ada,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    name: json["name"],
    type: venueTypeValues.map[json["type"]]!,
    id: json["id"],
    test: json["test"],
    url: json["url"],
    locale: localeValues.map[json["locale"]]!,
    postalCode: json["postalCode"],
    timezone: timezoneValues.map[json["timezone"]]!,
    city: City.fromJson(json["city"]),
    state: State.fromJson(json["state"]),
    country: Country.fromJson(json["country"]),
    address: Address.fromJson(json["address"]),
    location: Location.fromJson(json["location"]),
    markets: List<Genre>.from(json["markets"].map((x) => Genre.fromJson(x))),
    dmas: List<Dma>.from(json["dmas"].map((x) => Dma.fromJson(x))),
    upcomingEvents: UpcomingEvents.fromJson(json["upcomingEvents"]),
    links: AttractionLinks.fromJson(json["_links"]),
    aliases: List<String>.from(json["aliases"].map((x) => x)),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    social: Social.fromJson(json["social"]),
    boxOfficeInfo: BoxOfficeInfo.fromJson(json["boxOfficeInfo"]),
    parkingDetail: json["parkingDetail"],
    accessibleSeatingDetail: json["accessibleSeatingDetail"],
    generalInfo: GeneralInfo.fromJson(json["generalInfo"]),
    ada: Ada.fromJson(json["ada"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": venueTypeValues.reverse[type],
    "id": id,
    "test": test,
    "url": url,
    "locale": localeValues.reverse[locale],
    "postalCode": postalCode,
    "timezone": timezoneValues.reverse[timezone],
    "city": city.toJson(),
    "state": state.toJson(),
    "country": country.toJson(),
    "address": address.toJson(),
    "location": location.toJson(),
    "markets": List<dynamic>.from(markets.map((x) => x.toJson())),
    "dmas": List<dynamic>.from(dmas.map((x) => x.toJson())),
    "upcomingEvents": upcomingEvents.toJson(),
    "_links": links.toJson(),
    "aliases": List<dynamic>.from(aliases.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "social": social.toJson(),
    "boxOfficeInfo": boxOfficeInfo.toJson(),
    "parkingDetail": parkingDetail,
    "accessibleSeatingDetail": accessibleSeatingDetail,
    "generalInfo": generalInfo.toJson(),
    "ada": ada.toJson(),
  };
}

class Ada {
  String adaPhones;
  String adaCustomCopy;
  String adaHours;

  Ada({
    required this.adaPhones,
    required this.adaCustomCopy,
    required this.adaHours,
  });

  factory Ada.fromJson(Map<String, dynamic> json) => Ada(
    adaPhones: json["adaPhones"],
    adaCustomCopy: json["adaCustomCopy"],
    adaHours: json["adaHours"],
  );

  Map<String, dynamic> toJson() => {
    "adaPhones": adaPhones,
    "adaCustomCopy": adaCustomCopy,
    "adaHours": adaHours,
  };
}

class Address {
  String line1;

  Address({
    required this.line1,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    line1: json["line1"],
  );

  Map<String, dynamic> toJson() => {
    "line1": line1,
  };
}

class BoxOfficeInfo {
  String phoneNumberDetail;
  String openHoursDetail;
  String acceptedPaymentDetail;
  String willCallDetail;

  BoxOfficeInfo({
    required this.phoneNumberDetail,
    required this.openHoursDetail,
    required this.acceptedPaymentDetail,
    required this.willCallDetail,
  });

  factory BoxOfficeInfo.fromJson(Map<String, dynamic> json) => BoxOfficeInfo(
    phoneNumberDetail: json["phoneNumberDetail"],
    openHoursDetail: json["openHoursDetail"],
    acceptedPaymentDetail: json["acceptedPaymentDetail"],
    willCallDetail: json["willCallDetail"],
  );

  Map<String, dynamic> toJson() => {
    "phoneNumberDetail": phoneNumberDetail,
    "openHoursDetail": openHoursDetail,
    "acceptedPaymentDetail": acceptedPaymentDetail,
    "willCallDetail": willCallDetail,
  };
}

class City {
  String name;

  City({
    required this.name,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}

class Country {
  CountryName name;
  CountryCode countryCode;

  Country({
    required this.name,
    required this.countryCode,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    name: countryNameValues.map[json["name"]]!,
    countryCode: countryCodeValues.map[json["countryCode"]]!,
  );

  Map<String, dynamic> toJson() => {
    "name": countryNameValues.reverse[name],
    "countryCode": countryCodeValues.reverse[countryCode],
  };
}

enum CountryCode {
  US
}

final countryCodeValues = EnumValues({
  "US": CountryCode.US
});

enum CountryName {
  UNITED_STATES_OF_AMERICA
}

final countryNameValues = EnumValues({
  "United States Of America": CountryName.UNITED_STATES_OF_AMERICA
});

class Dma {
  int id;

  Dma({
    required this.id,
  });

  factory Dma.fromJson(Map<String, dynamic> json) => Dma(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class GeneralInfo {
  String generalRule;
  String childRule;

  GeneralInfo({
    required this.generalRule,
    required this.childRule,
  });

  factory GeneralInfo.fromJson(Map<String, dynamic> json) => GeneralInfo(
    generalRule: json["generalRule"],
    childRule: json["childRule"],
  );

  Map<String, dynamic> toJson() => {
    "generalRule": generalRule,
    "childRule": childRule,
  };
}

class Location {
  String longitude;
  String latitude;

  Location({
    required this.longitude,
    required this.latitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    longitude: json["longitude"],
    latitude: json["latitude"],
  );

  Map<String, dynamic> toJson() => {
    "longitude": longitude,
    "latitude": latitude,
  };
}

class Social {
  Twitter twitter;

  Social({
    required this.twitter,
  });

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    twitter: Twitter.fromJson(json["twitter"]),
  );

  Map<String, dynamic> toJson() => {
    "twitter": twitter.toJson(),
  };
}

class Twitter {
  String handle;

  Twitter({
    required this.handle,
  });

  factory Twitter.fromJson(Map<String, dynamic> json) => Twitter(
    handle: json["handle"],
  );

  Map<String, dynamic> toJson() => {
    "handle": handle,
  };
}

class State {
  String name;
  String stateCode;

  State({
    required this.name,
    required this.stateCode,
  });

  factory State.fromJson(Map<String, dynamic> json) => State(
    name: json["name"],
    stateCode: json["stateCode"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "stateCode": stateCode,
  };
}

enum VenueType {
  VENUE
}

final venueTypeValues = EnumValues({
  "venue": VenueType.VENUE
});

class EventLinks {
  First self;
  List<First> attractions;
  List<First> venues;

  EventLinks({
    required this.self,
    required this.attractions,
    required this.venues,
  });

  factory EventLinks.fromJson(Map<String, dynamic> json) => EventLinks(
    self: First.fromJson(json["self"]),
    attractions: List<First>.from(json["attractions"].map((x) => First.fromJson(x))),
    venues: List<First>.from(json["venues"].map((x) => First.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": self.toJson(),
    "attractions": List<dynamic>.from(attractions.map((x) => x.toJson())),
    "venues": List<dynamic>.from(venues.map((x) => x.toJson())),
  };
}

class Outlet {
  String url;
  String type;

  Outlet({
    required this.url,
    required this.type,
  });

  factory Outlet.fromJson(Map<String, dynamic> json) => Outlet(
    url: json["url"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "type": type,
  };
}

class PriceRange {
  PriceRangeType type;
  Currency currency;
  double min;
  double max;

  PriceRange({
    required this.type,
    required this.currency,
    required this.min,
    required this.max,
  });

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
    type: priceRangeTypeValues.map[json["type"]]!,
    currency: currencyValues.map[json["currency"]]!,
    min: json["min"]?.toDouble(),
    max: json["max"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "type": priceRangeTypeValues.reverse[type],
    "currency": currencyValues.reverse[currency],
    "min": min,
    "max": max,
  };
}

enum Currency {
  USD
}

final currencyValues = EnumValues({
  "USD": Currency.USD
});

enum PriceRangeType {
  STANDARD
}

final priceRangeTypeValues = EnumValues({
  "standard": PriceRangeType.STANDARD
});

class Product {
  String name;
  String id;
  String url;
  ProductType type;
  List<Classification> classifications;

  Product({
    required this.name,
    required this.id,
    required this.url,
    required this.type,
    required this.classifications,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    name: json["name"],
    id: json["id"],
    url: json["url"],
    type: productTypeValues.map[json["type"]]!,
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
    "url": url,
    "type": productTypeValues.reverse[type],
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
  };
}

enum ProductType {
  PARKING,
  UPSELL
}

final productTypeValues = EnumValues({
  "Parking": ProductType.PARKING,
  "Upsell": ProductType.UPSELL
});

class Promoter {
  String id;
  PromoterName name;
  Description description;

  Promoter({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Promoter.fromJson(Map<String, dynamic> json) => Promoter(
    id: json["id"],
    name: promoterNameValues.map[json["name"]]!,
    description: descriptionValues.map[json["description"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": promoterNameValues.reverse[name],
    "description": descriptionValues.reverse[description],
  };
}

enum Description {
  LIVE_NATION_MUSIC_NTL_USA,
  LIVE_NATION_NTL_GBR,
  PROMOTED_BY_VENUE_NTL_USA
}

final descriptionValues = EnumValues({
  "LIVE NATION MUSIC / NTL / USA": Description.LIVE_NATION_MUSIC_NTL_USA,
  "LIVE NATION / NTL / GBR": Description.LIVE_NATION_NTL_GBR,
  "PROMOTED BY VENUE / NTL / USA": Description.PROMOTED_BY_VENUE_NTL_USA
});

enum PromoterName {
  LIVE_NATION,
  LIVE_NATION_MUSIC,
  PROMOTED_BY_VENUE
}

final promoterNameValues = EnumValues({
  "LIVE NATION": PromoterName.LIVE_NATION,
  "LIVE NATION MUSIC": PromoterName.LIVE_NATION_MUSIC,
  "PROMOTED BY VENUE": PromoterName.PROMOTED_BY_VENUE
});

class Sales {
  Public public;
  List<Presale> presales;

  Sales({
    required this.public,
    required this.presales,
  });

  factory Sales.fromJson(Map<String, dynamic> json) => Sales(
    public: Public.fromJson(json["public"]),
    presales: List<Presale>.from(json["presales"].map((x) => Presale.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "public": public.toJson(),
    "presales": List<dynamic>.from(presales.map((x) => x.toJson())),
  };
}

class Presale {
  DateTime startDateTime;
  DateTime endDateTime;
  String name;
  String description;

  Presale({
    required this.startDateTime,
    required this.endDateTime,
    required this.name,
    required this.description,
  });

  factory Presale.fromJson(Map<String, dynamic> json) => Presale(
    startDateTime: DateTime.parse(json["startDateTime"]),
    endDateTime: DateTime.parse(json["endDateTime"]),
    name: json["name"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "startDateTime": startDateTime.toIso8601String(),
    "endDateTime": endDateTime.toIso8601String(),
    "name": name,
    "description": description,
  };
}

class Public {
  DateTime startDateTime;
  bool startTbd;
  bool startTba;
  DateTime endDateTime;

  Public({
    required this.startDateTime,
    required this.startTbd,
    required this.startTba,
    required this.endDateTime,
  });

  factory Public.fromJson(Map<String, dynamic> json) => Public(
    startDateTime: DateTime.parse(json["startDateTime"]),
    startTbd: json["startTBD"],
    startTba: json["startTBA"],
    endDateTime: DateTime.parse(json["endDateTime"]),
  );

  Map<String, dynamic> toJson() => {
    "startDateTime": startDateTime.toIso8601String(),
    "startTBD": startTbd,
    "startTBA": startTba,
    "endDateTime": endDateTime.toIso8601String(),
  };
}

class Seatmap {
  String staticUrl;

  Seatmap({
    required this.staticUrl,
  });

  factory Seatmap.fromJson(Map<String, dynamic> json) => Seatmap(
    staticUrl: json["staticUrl"],
  );

  Map<String, dynamic> toJson() => {
    "staticUrl": staticUrl,
  };
}

class TicketLimit {
  String info;

  TicketLimit({
    required this.info,
  });

  factory TicketLimit.fromJson(Map<String, dynamic> json) => TicketLimit(
    info: json["info"],
  );

  Map<String, dynamic> toJson() => {
    "info": info,
  };
}

class Ticketing {
  AllInclusivePricing safeTix;
  AllInclusivePricing allInclusivePricing;

  Ticketing({
    required this.safeTix,
    required this.allInclusivePricing,
  });

  factory Ticketing.fromJson(Map<String, dynamic> json) => Ticketing(
    safeTix: AllInclusivePricing.fromJson(json["safeTix"]),
    allInclusivePricing: AllInclusivePricing.fromJson(json["allInclusivePricing"]),
  );

  Map<String, dynamic> toJson() => {
    "safeTix": safeTix.toJson(),
    "allInclusivePricing": allInclusivePricing.toJson(),
  };
}

class AllInclusivePricing {
  bool enabled;

  AllInclusivePricing({
    required this.enabled,
  });

  factory AllInclusivePricing.fromJson(Map<String, dynamic> json) => AllInclusivePricing(
    enabled: json["enabled"],
  );

  Map<String, dynamic> toJson() => {
    "enabled": enabled,
  };
}

enum EventType {
  EVENT
}

final eventTypeValues = EnumValues({
  "event": EventType.EVENT
});

class ResponseModelLinks {
  First first;
  First self;
  First next;
  First last;

  ResponseModelLinks({
    required this.first,
    required this.self,
    required this.next,
    required this.last,
  });

  factory ResponseModelLinks.fromJson(Map<String, dynamic> json) => ResponseModelLinks(
    first: First.fromJson(json["first"]),
    self: First.fromJson(json["self"]),
    next: First.fromJson(json["next"]),
    last: First.fromJson(json["last"]),
  );

  Map<String, dynamic> toJson() => {
    "first": first.toJson(),
    "self": self.toJson(),
    "next": next.toJson(),
    "last": last.toJson(),
  };
}

class Page {
  int size;
  int totalElements;
  int totalPages;
  int number;

  Page({
    required this.size,
    required this.totalElements,
    required this.totalPages,
    required this.number,
  });

  factory Page.fromJson(Map<String, dynamic> json) => Page(
    size: json["size"],
    totalElements: json["totalElements"],
    totalPages: json["totalPages"],
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "size": size,
    "totalElements": totalElements,
    "totalPages": totalPages,
    "number": number,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
