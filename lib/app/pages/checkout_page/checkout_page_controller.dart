import 'package:get/get.dart';

class CheckoutPageController extends GetxController {

  String _orderType = "0";
  String get orderType => _orderType;
  void setOrderType(String type) {
    _orderType = type;
    print(_orderType);
    update();
  }

}