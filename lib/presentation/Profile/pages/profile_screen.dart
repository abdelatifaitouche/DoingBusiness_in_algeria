import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/Profile/widgets/info_widget.dart';
import 'package:doingbusiness/presentation/Profile/widgets/profile_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new_outlined),
                    Text(
                      'Profile',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.settings)
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage("assets/images/logo_gt.png"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Rafik boussa',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.1),
                      ),
                      Text(
                        'Student',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.1),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(child: ProfileAppBar()),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Account Informations',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                InfoWidget(
                  widgetColor: AppColors.mediumGreen,
                  widgetIcon: Icons.email_rounded,
                  widgetText: 'boussa.rafik@gt.dz.com',
                  widgetTitle: 'email',
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'App Settings',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                InfoWidget(
                  widgetColor: AppColors.primaryLight,
                  widgetIcon: Icons.light_mode,
                  widgetText: 'Light',
                  widgetTitle: 'light Mode',
                ),
              ],
            )),
      ),
    ));
  }
}
