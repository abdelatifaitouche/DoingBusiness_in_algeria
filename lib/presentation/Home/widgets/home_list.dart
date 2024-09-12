import 'package:doingbusiness/presentation/Home/widgets/home_item.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const HomeItem();
      },
    );
  }
}
