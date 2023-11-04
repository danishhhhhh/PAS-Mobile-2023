import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/checkout_page/checkout_page_binding.dart';
import 'package:pas_mobile/app/pages/checkout_page/checkout_page_view.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_binding.dart';
import 'package:pas_mobile/app/pages/detail_page/detail_page_view.dart';
import 'package:pas_mobile/app/pages/event_purchased_page/event_purchased_page_binding.dart';
import 'package:pas_mobile/app/pages/event_purchased_page/event_purchased_page_view.dart';
import 'package:pas_mobile/app/pages/home_page/home_page_binding.dart';
import 'package:pas_mobile/app/pages/home_page/home_page_view.dart';
import 'package:pas_mobile/app/pages/login_page/login_page_binding.dart';
import 'package:pas_mobile/app/pages/login_page/login_page_view.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_binding.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_view.dart';
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
  GetPage(
    name: '/home',
    page: () => const HomePageView(),
    binding: HomePageBinding(),
  ),
  GetPage(
    name: '/detail',
    page: () => const DetailPageView(),
    binding: DetailPageBinding(),
  ),
  GetPage(
    name: '/event_purchashed',
    page: () => const EventPurchasedPageView(),
    binding: EventPurchasedPageBinding(),
  ),
  GetPage(
    name: '/profile',
    page: () => const ProfilePageView(),
    binding: ProfilePageBinding(),
  ),
  GetPage(
    name: '/checkout',
    page: () => const CheckoutPageView(),
    binding: CheckoutPageBinding(),
  ),
];


