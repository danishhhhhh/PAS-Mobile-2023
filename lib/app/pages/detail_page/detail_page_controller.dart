import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile/app/models/api_model.dart';

class DetailPageController extends GetxController {
  Rx<Event> data = Event(name: "", id: "").obs;
  String idEvent = Get.arguments["id"];
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
}