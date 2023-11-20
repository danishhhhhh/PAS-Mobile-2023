import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:pas_mobile/app/models/api_model.dart';

class DetailPageController extends GetxController {
  Rx<Event> data = Event(name: "", id: "").obs;
  String idEvent = Get.arguments["id"];
  RxInt ticketCount = 1.obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    print(Get.arguments["id"]);
    final response = await http.get(Uri.parse(
        "https://app.ticketmaster.com/discovery/v2/events/${idEvent}.json?apikey=dAJ1FLpQoDkLO5zmA8AzEqZtysAjBzhb"));
    if (response.statusCode == 200) {
      var responses = jsonDecode(response.body);
      data.value = Event.fromJson(responses);
      isLoading.value = false;
    } else {
      print("status code : ${response.statusCode.toString()}");
    }
    isLoading.value = false;
  }

  addTicket() {
    ticketCount.value += 1;
  }

  removeTicket() {
    if (ticketCount.value > 1) {
      ticketCount.value -= 1;
    }
  }

  String formattingDate(String date) {
    try {
      DateTime originalDate = DateTime.parse(date);
      String formattedDate = DateFormat('dd MMM yyyy').format(originalDate);
      return formattedDate;
    } catch (e) {
      return "Invalid date format";
    }
  }

  String formattingTime(String time) {
    try {
      DateTime originalTime = DateFormat('HH:mm:ss').parse(time);
      String formattedTime = DateFormat('HH:mm').format(originalTime);
      return formattedTime;
    } catch (e) {
      return "Invalid time format";
    }
  }
}
