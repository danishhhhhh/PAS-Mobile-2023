import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_controller.dart';
import 'package:pas_mobile/app/pages/eticket_page/eticket_page_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckoutPageController extends GetxController {
  dynamic argumentData = Get.arguments;
  late final SharedPreferences prefs;
  RxString username = "".obs;
  RxBool isPayment = true.obs;
  RxBool onClickPrice = false.obs;
  RxInt ticketCount = 0.obs;

  final RxString _orderType = "".obs;
  RxString get orderType => _orderType;

  void setDefaultOrderType() {
    _orderType.value = "";
    print(_orderType);
    update();
  }

  void setOrderType(String type) {
    isPayment.value = true;
    _orderType.value = type;
    print(_orderType);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    load();
  }

  String totalPrice() {
    ticketCount.value = Get.find<DetailPageController>().ticketCount.value;
    double totalPrice = argumentData["eventPrice"] * ticketCount.value;
    String formattedPrice = totalPrice.toStringAsFixed(2);
    return formattedPrice;
  }

  void load() async {
    prefs = await SharedPreferences.getInstance();
    username.value = prefs.getString("username") ?? "No Username";
  }

  String formattingDate(String date) {
    try {
      DateTime originalDate = DateTime.parse(date);
      String formattedDate = DateFormat('dd MMM yyyy').format(originalDate);
      return formattedDate; // Output: 18-11-2023
    } catch (e) {
      return "Invalid date format";
    }
  }

  String formattingTime(String time) {
    try {
      DateTime originalTime = DateFormat('HH:mm:ss').parse(time);
      String formattedTime = DateFormat('HH:mm').format(originalTime);
      return formattedTime; // Output: 18-11-2023
    } catch (e) {
      return "Invalid time format";
    }
  }

}