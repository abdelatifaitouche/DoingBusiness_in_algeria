import 'package:doingbusiness/presentation/auth/controllers/user_controller.dart';
import 'package:doingbusiness/utils/loaders/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/images/logo_gt.png'),
          height: 35,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                height: 1.02,
                fontSize: 14,
              ),
            ),
            Obx(() {
              if (controller.profileLoading.value) {
                return CustomShimmer(width: 60, height: 15);
              } else {
                return Text(
                  controller.user.value.username,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    height: 1.02,
                    fontSize: 20,
                  ),
                );
              }
            }),
          ],
        ),
      ],
    );
  }
}