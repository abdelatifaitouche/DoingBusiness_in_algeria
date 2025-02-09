import 'package:doingbusiness/presentation/notifications/screens/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsHeader extends StatelessWidget {
  NotificationsHeader({super.key});

  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Notifications",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.black,
          height: 1.02,
          fontSize: 22,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () => Get.to(
                    const NotificationsScreen(),
                  ),
              child: Icon(Icons.settings_outlined)),
        )
      ],
    );
  }
}
