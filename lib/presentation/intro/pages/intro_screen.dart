import 'package:doingbusiness/common/widgets/basic_app_button.dart';
import 'package:doingbusiness/presentation/auth/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  // the first time this page loads up``
  GetStorage storage = GetStorage();
  @override
  void initState() {
    super.initState();
    storage.write('isShown', true);
  }

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
            color: Colors.black.withOpacity(0.6),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.09,
              horizontal: size.width * 0.1,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Image(
                        image: const AssetImage('assets/images/logo_gt.png'),
                        height: size.width * 0.12,
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
                const Spacer(),
                const Text(
                  "Doing Business",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 0.8,
                    fontSize: 45,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                const Text(
                  "Restez a la pointe de l'actualité financieres",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    height: 1.02,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: size.width * 0.2,
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
