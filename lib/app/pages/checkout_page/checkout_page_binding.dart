import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/checkout_page/checkout_page_controller.dart';

class CheckoutPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutPageController>(
          () => CheckoutPageController(),
    );
  }
}