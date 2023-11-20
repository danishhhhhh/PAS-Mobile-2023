import 'package:get/get.dart';

class ETicketPageController extends GetxController {
  RxString imageURL = "assets/images/qr.png".obs;
  String eventName = Get.arguments["eventName"];
}