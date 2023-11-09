import 'dart:convert';
import 'package:get/get.dart';

class DetailPageController extends GetxController {
  RxString api = "".obs;

  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    final response = await http.get(Uri.parse(
        "https://app.ticketmaster.com/discovery/v2/events.json?classificationId=KZFzniwnSyZfZ7v7nJ&apikey=dAJ1FLpQoDkLO5zmA8AzEqZtysAjBzhb"));
    if (response.statusCode == 200) {
      api.value = response.body;
      var r = jsonDecode(response.body);
      final TicketModel ticketModel = TicketModel.fromJson(r);
      String event = ticketModel.embedded.events[0].name;
      print("halo: ${ticketModel.embedded.events[0].info}");
    } else {
      print("status code : ${response.statusCode.toString()}");
    }
    isLoading.value = false;
  }
}