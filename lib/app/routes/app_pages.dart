import 'package:get/get.dart';

import '../modules/auth/otp_screen/bindings/otp_screen_binding.dart';
import '../modules/auth/otp_screen/views/otp_screen_view.dart';
import '../modules/auth/phone_auth/bindings/phone_auth_binding.dart';
import '../modules/auth/phone_auth/views/phone_auth_view.dart';
import '../modules/auth/sign_in/bindings/sign_in_binding.dart';
import '../modules/auth/sign_in/views/sign_in_view.dart';
import '../modules/auth/sign_up/bindings/sign_up_binding.dart';
import '../modules/auth/sign_up/views/sign_up_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_AUTH,
      page: () => PhoneAuthView(),
      binding: PhoneAuthBinding(),
    ),
    GetPage(
      name: _Paths.OTP_SCREEN,
      page: () =>  OtpScreenView(),
      binding: OtpScreenBinding(),
    ),
  ];
}
