import 'package:doingbusiness/presentation/auth/pages/login_screen.dart';
import 'package:doingbusiness/presentation/intro/pages/intro_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final box = GetStorage();

  void switchScreen() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    final isShown = box.read('isShown');

    if (isShown == null) {
      Get.offAll(const GetStartedPage());
    }

    isShown ? Get.offAll(LoginScreen()) : Get.offAll(const GetStartedPage());
  }
}
