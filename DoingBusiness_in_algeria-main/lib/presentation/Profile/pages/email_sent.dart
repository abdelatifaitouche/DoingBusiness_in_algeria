import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/auth/controllers/forget_password_controller.dart';
import 'package:doingbusiness/presentation/auth/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Lottie.asset('assets/images/email_animation.json'),
              Column(
                children: [
                  Text(
                    "Password reset email sent",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      height: 1.02,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    email,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      height: 1.02,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "Your account security is Our Priority, We've sent you a Secure Link to Safely Change your Password and Keep your account protected",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      height: 1.02,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryDark,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(260, 60),
                ),
                onPressed: () {
                  Get.offAll(LoginScreen());
                },
                child: const Text(
                  "Done",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1.1,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    ForgetPasswordController.instance
                        .resentPasswordResetEmail(email);
                  },
                  child: Text('resend button'))
            ],
          ),
        ),
      ),
    );
  }
}
