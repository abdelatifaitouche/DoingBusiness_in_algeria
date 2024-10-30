import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/explorer/pages/explorer_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width * 0.9,
          height: size.height * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/3d_bg.jpg",
              fit: BoxFit.cover,
              color: const Color.fromARGB(150, 0, 0, 0),
              colorBlendMode: BlendMode.multiply,
            ),
          ),
        ),
        Positioned(
          top: 35,
          left: 20,
          child: Container(
            width: size.width * 0.8,
            child: Text(
                maxLines: 2,
                "Hey, quel sujet vous interesse aujourd'hui ?",
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    height: 1.1,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          ),
        ),
        Positioned(
          left: 20,
          top: 100,
          child: Container(
            alignment: Alignment.center,
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.primaryLight,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => Get.to(ExplorerScreen()),
                  child: Text(
                    'Explorer',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
