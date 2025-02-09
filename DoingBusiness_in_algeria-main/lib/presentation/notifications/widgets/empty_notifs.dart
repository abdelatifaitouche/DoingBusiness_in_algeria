import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyNotif extends StatelessWidget {
  EmptyNotif({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(
          child: LottieBuilder.asset(
            'assets/images/notifcations_animation.json',
            height: 250,
            width: 250,
          ),
        ),
        const Text(
          "No Notifications available for now",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            height: 1.02,
            fontSize: 18,
          ),
        ),
      ]),
    );
  }
}
