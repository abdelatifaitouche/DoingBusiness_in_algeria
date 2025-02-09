import 'package:doingbusiness/data/models/user_model.dart';
import 'package:doingbusiness/data/repository/user_repository.dart';
import 'package:doingbusiness/presentation/auth/controllers/authentication_repository.dart';
import 'package:doingbusiness/presentation/auth/pages/email_verification.dart';
import 'package:doingbusiness/utils/Network/network_manager.dart';
import 'package:doingbusiness/utils/animations/full_screen_loader.dart';
import 'package:doingbusiness/utils/loaders/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final hidePassword = true.obs;
  final agreeTerms = true.obs;
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    try {
      //start the loading animations
      FullScreenLoader.openLoadingDialog("We are processing your informations",
          "assets/images/loading_animation.json");

      //check for internet connection
      final isConncted = await NetworkManager.instance.isConnected();
      if (!isConncted) {
        FullScreenLoader.stopLoading();

        return;
      }

      //Form validation
      if (!signupFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();

        return;
      }

      //privacy policy check

      if (!agreeTerms.value) {
        FullScreenLoader.stopLoading();

        Loaders.warrningSnackBar(
            title: 'Accept pirvacy policy',
            message:
                'In Order to use our app, you need to accept the privacy policy');
        return;
      }

      //register the data for the authentication

      final usercredentials = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());
      // save the user record
      final user = UserModel(
          id: usercredentials.user!.uid,
          username: username.text.trim(),
          email: email.text.trim());

      final userReposistory = Get.put(UserRepository());
      await userReposistory.saveUserRecord(user);

      FullScreenLoader.stopLoading();

      Loaders.successSnackBar(
          title: 'Congrats', message: 'Your account has been created !!!');
      Get.to(() => EmailVerificationScreen(
            email: email.text.trim(),
          ));
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.warrningSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
