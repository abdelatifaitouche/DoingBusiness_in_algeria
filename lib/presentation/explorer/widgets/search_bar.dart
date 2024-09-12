import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 239, 239, 239),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: "Search for",
          fillColor: Colors.transparent,
          prefixIcon: Icon(
            Icons.search_outlined,
          ),
        ),
      ),
    );
  }
}
