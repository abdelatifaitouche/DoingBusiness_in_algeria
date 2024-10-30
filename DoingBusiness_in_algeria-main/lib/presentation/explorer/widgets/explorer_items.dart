import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ExplorerItems extends StatelessWidget {
  const ExplorerItems({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: size.width * 0.18,
          height: size.height * 0.04,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.primaryDark,
          ),
          child: Text('All',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
        ),
        Container(
          alignment: Alignment.center,
          width: size.width * 0.18,
          height: size.height * 0.04,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 187, 187, 187),
          ),
          child: Text('Finances',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
        ),
        Container(
          alignment: Alignment.center,
          width: size.width * 0.18,
          height: size.height * 0.04,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 187, 187, 187),
          ),
          child: Text('Algeria',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
        ),
        Container(
          alignment: Alignment.center,
          width: size.width * 0.18,
          height: size.height * 0.04,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 187, 187, 187),
          ),
          child: Text('Algeria',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
