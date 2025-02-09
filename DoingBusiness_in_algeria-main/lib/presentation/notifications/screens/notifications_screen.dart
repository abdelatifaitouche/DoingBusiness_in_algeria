import 'package:doingbusiness/presentation/Home/widgets/home_header.dart';
import 'package:doingbusiness/presentation/notifications/widgets/empty_notifs.dart';
import 'package:doingbusiness/utils/services/notification_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  Widget build(BuildContext context) {
    bool isEmpty = true;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Notifications",
            style: TextStyle(
              fontWeight: FontWeight.w800,
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
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              onTap: () {
                LocalNotification.showBasicNotification();
              },
              leading: const Icon(Icons.notifications),
              title: const Text('basic notification'),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
            )
          ],
        ));
  }
}
