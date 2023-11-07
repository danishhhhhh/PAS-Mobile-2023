import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_controller.dart';

class ProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilePageController>(
          () => ProfilePageController(),
    );
  }
}