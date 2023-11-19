import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/eticket_page/eticket_page_controller.dart';

class ETicketPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ETicketPageController>(
          () => ETicketPageController(),
    );
  }
}