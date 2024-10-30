import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String widgetTitle;
  final String widgetText;
  final IconData widgetIcon;
  final Color widgetColor;
  const InfoWidget(
      {super.key,
      required this.widgetTitle,
      required this.widgetText,
      required this.widgetIcon,
      required this.widgetColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: widgetColor),
          child: Icon(
            widgetIcon,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widgetTitle,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              widgetText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
