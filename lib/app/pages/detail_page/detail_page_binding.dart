import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_controller.dart';

class DetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPageController>(
          () => DetailPageController(),
    );
  }
}