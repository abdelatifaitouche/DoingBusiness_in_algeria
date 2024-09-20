import 'dart:async';

import 'package:doingbusiness/presentation/auth/controllers/authentication_repository.dart';
import 'package:doingbusiness/utils/loaders/loaders.dart';
import 'package:doingbusiness/utils/pages/success_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  static EmailVerificationController get instance => Get.find();

  // send email whenever verify screen appears & set timer for auto redirect
  @override
  void onInit() {
    sendEmailVerificaiton();
    setTimerForAutoRedirect();
    super.onInit();
  }

  //send email verification link
  sendEmailVerificaiton() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerificaiton();
      Loaders.successSnackBar(
          title: "Email sent", message: 'Please, check your inbox');
    } catch (e) {
      Loaders.warrningSnackBar(title: 'oh snap', message: e.toString());
    }
  }

  //Timer to auto redirect to email verification
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => const SuccessScreen());
      }
    });
  }
  // manualy check if email verified

  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(SuccessScreen());
    }
  }
}
