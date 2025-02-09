import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/data/repository/user_repository.dart';
import 'package:doingbusiness/presentation/Profile/controller/profile_controller.dart';
import 'package:doingbusiness/presentation/auth/controllers/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeleteUserAccount extends StatelessWidget {
  final userRepo = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new_outlined),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Delete your account',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "If you’re facing any issues with the app, we’d love to hear your feedback. Let us know what’s bothering you, and we’ll work on improving your experience!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.warrningOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minimumSize: const Size(260, 60),
                  ),
                  onPressed: () {
                    userRepo.deleteAccountController();
                  },
                  child: const Text(
                    "Proceed",
                    style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.1,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
