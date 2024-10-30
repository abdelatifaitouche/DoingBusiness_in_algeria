import 'package:flutter/material.dart';

class BulletItem extends StatelessWidget {
  BulletItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              child: Text(
                text,
                textAlign: TextAlign.left,
                softWrap: true,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  height: 1.05,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
