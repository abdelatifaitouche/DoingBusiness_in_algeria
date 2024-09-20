import 'dart:ui';

import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/auth/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/3d_bg.jpg",
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.08,
              horizontal: size.width * 0.08,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Image(
                        image: const AssetImage('assets/images/logo_gt.png'),
                        height: size.width * 0.1,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 1.02,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Doing Business",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
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
                  height: size.height * 0.18,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: 400,
                      height: 500,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hey",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                              height: 1.02,
                              fontSize: 25,
                            ),
                          ),
                          const Text(
                            "Connectez vous !!",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              height: 1.02,
                              fontSize: 35,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Column(
                            children: [
                              const TextField(
                                  decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                              )),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              const TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.white,
                                      ) //icon at tail of input
                                      )),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              const Text(
                                "mot de passe oublié",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45,
                                  height: 1.02,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primaryDark,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    minimumSize: const Size(260, 60),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Login Now",
                                    style: TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 1.1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Vous n'avez pas de compte?",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  height: 1.02,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () => Get.to(SignUpScreen()),
                                child: const Text(
                                  "Créer un",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryLight,
                                    height: 1.02,
                                    fontSize: 16,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/**
 * 
 * 
 * Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.08,
                horizontal: size.width * 0.08,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Image(
                          image: const AssetImage('assets/images/logo_gt.png'),
                          height: size.width * 0.1,
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        const Column(
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
                  SizedBox(
                    height: size.height * 0.18,
                  ),
                  const Text(
                    "Hey",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 1.02,
                      fontSize: 25,
                    ),
                  ),
                  const Text(
                    "Connectez vous !!",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      height: 1.02,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Column(
                    children: [
                      const TextField(
                          decoration: InputDecoration(
                        icon: Icon(Icons.email),
                      )),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      const TextField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.lock),
                              suffixIcon: Icon(
                                  Icons.remove_red_eye) //icon at tail of input
                              )),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      const Text(
                        "mot de passe oublié",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black45,
                          height: 1.02,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryDark,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            minimumSize: const Size(260, 60),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Login Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  const Text(
                    "Vous n'avez pas de compte? Creez un ",
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
 */