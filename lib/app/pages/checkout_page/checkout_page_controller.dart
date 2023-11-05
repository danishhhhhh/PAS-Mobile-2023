import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutPageController extends GetxController {

  String _orderType = "gopay";
  String get orderType => _orderType;
  void setOrderType(String type) {
    _orderType = type;
    print(_orderType);
    update();
  }

}