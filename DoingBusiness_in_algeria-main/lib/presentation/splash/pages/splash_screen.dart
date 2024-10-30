import 'package:doingbusiness/presentation/auth/controllers/authentication_repository.dart';
import 'package:doingbusiness/presentation/intro/pages/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  AuthenticationRepository controller = Get.put(AuthenticationRepository());

  @override
  void initState() {
    super.initState();
    controller.screenRedirect();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Image(
        image: const AssetImage('assets/images/logo_gt.png'),
        height: size.width * 0.3,
      )),
    );
  }

  Future splashTiming() async {
    //wait some time
    // got the next screen
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(const GetStartedPage());
  }
}
