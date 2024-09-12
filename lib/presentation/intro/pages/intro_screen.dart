import 'package:doingbusiness/common/widgets/basic_app_button.dart';
import 'package:doingbusiness/presentation/auth/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/bg_intro.jpg",
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.35),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 40,
            ),
            child: Column(
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
                const Spacer(),
                const Text(
                  "Restez a la pointe de l'actualité financieres ",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.02,
                    fontSize: 45,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                BasicAppButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                    },
                    title: 'Get Started ')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
