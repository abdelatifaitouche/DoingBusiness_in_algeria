import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo_gt.png'),
                      height: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
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
                height: 100,
              ),
              Text(
                "Hey",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.02,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Créez votre compte DoingBusiness !!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.02,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  const TextField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.person), //icon at head of input
                    //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too
                    //prefisIcon sets Icon inside the TextField border, 'icon' sets outside border.

                    //icon at tail of input
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.email), //icon at head of input
                    //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too
                    //prefisIcon sets Icon inside the TextField border, 'icon' sets outside border.

                    //icon at tail of input
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.lock), //icon at head of input
                    //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too
                    //prefisIcon sets Icon inside the TextField border, 'icon' sets outside border.

                    //icon at tail of input
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock), //icon at head of input
                          //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too
                          //prefisIcon sets Icon inside the TextField border, 'icon' sets outside border.
                          suffixIcon:
                              Icon(Icons.remove_red_eye) //icon at tail of input
                          )),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryDark,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minimumSize: const Size(260, 60),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Vous avez deja un compte ? connectez vous ",
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
