import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/splash_screen_page/splash_screen_page_controller.dart';

class SplashScreenPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(
          () => SplashScreenController(),
    );
  }
}