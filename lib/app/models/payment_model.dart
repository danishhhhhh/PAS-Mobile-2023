import 'package:get/get.dart';

class PaymentModel {
  late String image;
  late String name;

  PaymentModel(String image, this.name){
    this.image = "assets/images/payment/$image\_logo.png";
  }
}