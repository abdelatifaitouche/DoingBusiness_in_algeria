import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage('assets/images/logo_gt.png'),
            height: 35,
          ),
          Text(
            "Doing Business",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              height: 1.02,
              fontSize: 20,
            ),
          ),
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: Colors.black, spreadRadius: 1),
                ],
              ),
              child: Icon(Icons.notifications_active_outlined))
        ],
      ),
    );
  }
}
