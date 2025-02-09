import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:timezone/timezone.dart' as tz;

class LocalNotification {
  //setup
  static FlutterLocalNotificationsPlugin flutterLocalNotificationPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    InitializationSettings settings = InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
    );

    flutterLocalNotificationPlugin.initialize(settings,
        onDidReceiveBackgroundNotificationResponse: (details) {},
        onDidReceiveNotificationResponse: (details) {});
  }

  //basic notification
  static void showBasicNotification() async {
    NotificationDetails details = NotificationDetails(
        android: AndroidNotificationDetails('channelId', "channelName",
            importance: Importance.max, priority: Priority.high));
    await flutterLocalNotificationPlugin.show(
        0, "title", "message body", details);
  }

  //repeated notification

  //scheduled notification
}
