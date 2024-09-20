import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/auth/controllers/signup_controller.dart';
import 'package:doingbusiness/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo_gt.png'),
                      height: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black45,
                            height: 1.02,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Doing Business",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            height: 1.02,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Form(
                key: controller.signupFormKey,
                child: Column(
                  children: [
                    TextFormField(
                        validator: (value) =>
                            FieldsValidators.validatingField("Username", value),
                        controller: controller.username,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person))),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) =>
                          FieldsValidators.validatingEmail(value),
                      controller: controller.email,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => TextFormField(
                          obscureText: controller.hidePassword.value,
                          validator: (value) =>
                              FieldsValidators.validatingPassword(value),
                          controller: controller.password,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () => controller.hidePassword.value =
                                  !controller.hidePassword.value,
                              icon: controller.hidePassword.value
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                            prefixIcon: Icon(Icons.lock),
                          )),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                              value: controller.agreeTerms.value,
                              onChanged: (value) => controller.agreeTerms
                                  .value = !controller.agreeTerms.value),
                        ),
                        Text('i agree to Privacy policy and terms of use')
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryDark,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          minimumSize: const Size(260, 60),
                        ),
                        onPressed: () => controller.signUp(),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Vous avez deja un compte ? connectez vous ",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.02,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
