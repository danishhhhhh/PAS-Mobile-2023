import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/login_page/login_page_binding.dart';
import 'package:pas_mobile/app/pages/login_page/login_page_view.dart';
import 'package:pas_mobile/app/pages/register_page/register_page_binding.dart';
import 'package:pas_mobile/app/pages/register_page/register_page_view.dart';
import 'package:pas_mobile/app/pages/splash_screen_page/splash_screen_page_binding.dart';
import 'package:pas_mobile/app/pages/splash_screen_page/splash_screen_page_view.dart';


List<GetPage> routes = [
  GetPage(
    name: '/splash',
    page: () => const SplashScreenView(),
    binding: SplashScreenPageBinding(),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginPageView(),
    binding: LoginPageBinding(),
  ),
  GetPage(
    name: '/register',
    page: () => const RegisterPageView(),
    binding: RegisterPageBinding(),
  ),
];


