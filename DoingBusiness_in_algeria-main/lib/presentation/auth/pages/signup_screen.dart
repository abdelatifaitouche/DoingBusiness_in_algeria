import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/auth/controllers/signup_controller.dart';
import 'package:doingbusiness/presentation/auth/pages/login_screen.dart';
import 'package:doingbusiness/presentation/auth/pages/terms_conditions.dart';
import 'package:doingbusiness/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  height: 50,
                ),
                Text(
                  "Créer votre compte ",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    height: 1.02,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Form(
                  key: controller.signupFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                          validator: (value) =>
                              FieldsValidators.validatingField(
                                  "Username", value),
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
                        height: 35,
                      ),
                      Row(
                        children: [
                          Obx(
                            () => Checkbox(
                                value: controller.agreeTerms.value,
                                onChanged: (value) => controller.agreeTerms
                                    .value = !controller.agreeTerms.value),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => const TermsConditions(),
                              );
                            },
                            child: Container(
                                width: size.width * 0.6,
                                child: RichText(
                                  text: TextSpan(
                                    text: "J'ai lu et j'accepte les ",
                                    style: TextStyle(color: Colors.black),
                                    children: const <TextSpan>[
                                      TextSpan(
                                          text: 'Politiques de confidentialité',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
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
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const Text(
                      "Vous avez deja un compte?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 1.02,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(LoginScreen()),
                      child: const Text(
                        "Connectez vous!!",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryLight,
                          height: 1.02,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
