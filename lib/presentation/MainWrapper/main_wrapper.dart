import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/Home/pages/home_screen.dart';
import 'package:doingbusiness/presentation/MainWrapper/controllers/mainwrapper_controller.dart';
import 'package:doingbusiness/presentation/Profile/pages/profile_screen.dart';
import 'package:doingbusiness/presentation/explorer/pages/explorer_screen.dart';
import 'package:doingbusiness/presentation/saved/pages/saved_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});

  final MainWrapperController controller = Get.put(MainWrapperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: controller.animateToTab,
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          ExplorerScreen(),
          SavedScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white10,
        elevation: 0,
        notchMargin: 5,
        height: 85,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomAppBarItem(context,
                    icon: Icons.home_outlined, page: 0, label: "Home"),
                _bottomAppBarItem(context,
                    icon: Icons.gps_fixed_outlined, page: 1, label: "Dsicover"),
                _bottomAppBarItem(context,
                    icon: Icons.bookmark_border_rounded,
                    page: 2,
                    label: "Saved"),
                _bottomAppBarItem(context,
                    icon: Icons.person_outline_outlined,
                    page: 3,
                    label: "Profile"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required label}) {
    return GestureDetector(
      onTap: () => controller.goToTab(page),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: controller.currentPage.value == page
                ? Colors.purple
                : Colors.grey,
            size: controller.currentPage.value == page ? 27 : 22,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            label,
            style: TextStyle(
              color: controller.currentPage.value == page
                  ? AppColors.primaryDark
                  : Colors.grey,
              fontSize: controller.currentPage.value == page ? 13 : 12,
            ),
          ),
        ],
      ),
    );
  }
}
