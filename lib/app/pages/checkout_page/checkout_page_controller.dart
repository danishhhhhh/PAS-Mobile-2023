import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_controller.dart';
import 'package:pas_mobile/app/pages/eticket_page/eticket_page_controller.dart';

class CheckoutPageController extends GetxController {
  dynamic argumentData = Get.arguments;

  final RxString _orderType = "0".obs;
  RxString get orderType => _orderType;
  void setOrderType(String type) {
    _orderType.value = type;
    print(_orderType);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    price();
  }

  String price() {
    int ticketCount = Get.find<DetailPageController>().ticketCount.value;
    double totalPrice = argumentData["eventPrice"] * ticketCount;
    String formattedPrice = totalPrice.toStringAsFixed(2);
    return formattedPrice;
  }

}