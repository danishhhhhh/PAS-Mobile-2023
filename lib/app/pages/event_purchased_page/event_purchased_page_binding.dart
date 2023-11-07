import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/event_purchased_page/event_purchased_controller.dart';

class EventPurchasedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventPurchasedPageController>(
          () => EventPurchasedPageController(),
    );
  }
}