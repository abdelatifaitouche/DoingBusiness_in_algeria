import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.08,
            horizontal: size.width * 0.08,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Image(
                      image: const AssetImage('assets/images/logo_gt.png'),
                      height: size.width * 0.1,
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
                            color: Colors.black45,
                            height: 1.02,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Doing Business",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            height: 1.02,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.18,
              ),
              const Text(
                "Hey",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.02,
                  fontSize: 25,
                ),
              ),
              const Text(
                "Connectez vous !!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.02,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Column(
                children: [
                  const TextField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.email),
                  )),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          suffixIcon:
                              Icon(Icons.remove_red_eye) //icon at tail of input
                          )),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    "mot de passe oublié",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                      height: 1.02,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryDark,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minimumSize: const Size(260, 60),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Login Now",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text(
                "Vous n'avez pas de compte? Creez un ",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.02,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
