import 'dart:developer'; //here is for to get token

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:grock/grock.dart';

class NotificationController extends GetxController {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  @override
  void onInit() {
    super.onInit();
    _initializeFirebaseMessaging();
  }

  void _initializeFirebaseMessaging() async {
    // Request permission for iOS
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else {
      print('User declined or has not accepted permission');
    }

    // Get the device token
    _getToken();

    // Handle foreground notifications
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        print('Foreground Notification: ${message.notification!.title}');
        print('Body: ${message.notification!.body}');
      }
      if (message.data.isNotEmpty) {
        print('Data: ${message.data}');
      }
      // Show a dialog or alert
      Get.snackbar(
        message.notification!.title ?? "Notification",
        message.notification!.body ?? "You have a new message",
      );
    });

    // Handle background/terminated state
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Notification clicked!');
      Get.snackbar(
        message.notification!.title ?? "Notification",
        message.notification!.body ?? "You have a new message",
      );
      //_navigateToNotificationScreen(message);
    });
  }

  void _getToken() async {
    String? token = await _messaging.getToken();
    print("FCM Token: $token");
    // Send token to server or save it securely
  }
}
