import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/Profile/widgets/info_widget.dart';
import 'package:doingbusiness/presentation/Profile/widgets/profile_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(size.width * 0.02),
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
                  height: size.height * 0.05,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.17,
                        height: size.height * 0.07,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage("assets/images/logo_gt.png"),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
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
                  height: size.height * 0.03,
                ),
                Center(child: ProfileAppBar()),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  'Account Informations',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InfoWidget(
                  widgetColor: AppColors.mediumGreen,
                  widgetIcon: Icons.email_rounded,
                  widgetText: 'boussa.rafik@gt.dz.com',
                  widgetTitle: 'email',
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  'App Settings',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.01,
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
