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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.04,
              horizontal: size.width * 0.06,
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
                              height: 1.02,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Doing Business",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              height: 1.02,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Text(
                  "Créer votre compte ",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    height: 1.02,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
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
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextFormField(
                        validator: (value) =>
                            FieldsValidators.validatingEmail(value),
                        controller: controller.email,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
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
                      SizedBox(
                        height: size.height * 0.035,
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
                                    style: TextStyle(color: Colors.grey),
                                    text: "J'ai lu et j'accepte les ",
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
                      SizedBox(
                        height: size.height * 0.035,
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
                SizedBox(
                  height: size.height * 0.05,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Vous avez deja un compte?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
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
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
