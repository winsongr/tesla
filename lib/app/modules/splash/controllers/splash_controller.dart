import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tesla/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> loadSplash() async {
    await Future.delayed(1.seconds, () async {
      // FirebaseAuth.instance.authStateChanges().listen((User? user) {
      //   if (user == null) {
          Get.offAllNamed(Routes.SIGN_IN);
        // } else {
          // Get.offAllNamed(Routes.HOME);
        // }
      // });
    });
  }
}
