import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? height;
  final String title;
  const BasicAppButton(
      {required this.onPressed, this.height, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          minimumSize: const Size(260, 60),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ));
  }
}
