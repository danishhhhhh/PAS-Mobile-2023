import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile/app/models/api_model.dart';

class HomePageController extends GetxController {
  Rx<TicketModel> data = TicketModel().obs;
  
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
      var responses = jsonDecode(response.body);
      data.value = TicketModel.fromJson(responses);
      isLoading.value = false;
    } else {
      print("status code : ${response.statusCode.toString()}");
    }
    isLoading.value = false;
  }

}