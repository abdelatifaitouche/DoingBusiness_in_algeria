import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/auth/controllers/forget_password_controller.dart';
import 'package:doingbusiness/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined)),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Change your Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.02,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Form(
              key: controller.forgetPasswordFormKey,
              child: TextFormField(
                controller: controller.email,
                validator: FieldsValidators.validatingEmail,
                decoration: InputDecoration(
                  hintText: "E-mail",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 129, 129, 129)),
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.email_outlined,
                  ),
                  //icon at tail of input
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryDark,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(260, 60),
                ),
                onPressed: () {
                  controller.sendPasswordResetEmail();
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1.1,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
