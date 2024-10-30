import 'package:doingbusiness/utils/loaders/custom_shimmer.dart';
import 'package:flutter/material.dart';

class HomeItemShimmer extends StatelessWidget {
  const HomeItemShimmer({
    super.key,
    this.itemCount = 6,
  });

  final int itemCount;
  /*
  width: double.infinity,
            height: size.height * 0.45,,*/
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: itemCount,
          scrollDirection: Axis.vertical,
          separatorBuilder: (_, __) => const SizedBox(
                height: 5,
              ),
          itemBuilder: (_, index) {
            return Row(
              children: [
                CustomShimmer(
                    width: size.width * 0.27, height: size.height * 0.12),
                SizedBox(
                  width: size.width * 0.01,
                ),
                CustomShimmer(
                    width: size.width * 0.6, height: size.height * 0.10),
              ],
            );
          }),
    );
  }
}
