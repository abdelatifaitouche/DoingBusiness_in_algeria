import 'package:doingbusiness/utils/loaders/custom_shimmer.dart';
import 'package:flutter/material.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({
    super.key,
    this.itemCount = 6,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 40,
      child: ListView.separated(
          shrinkWrap: true,
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SizedBox(
                width: 5,
              ),
          itemBuilder: (_, index) {
            return CustomShimmer(
                width: size.width * 0.25, height: size.height * 0.04);
          }),
    );
  }
}
