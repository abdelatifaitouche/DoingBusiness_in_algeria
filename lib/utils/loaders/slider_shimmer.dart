import 'package:doingbusiness/utils/loaders/custom_shimmer.dart';
import 'package:flutter/material.dart';

class SliderItemShimmer extends StatelessWidget {
  const SliderItemShimmer({
    super.key,
    this.itemCount = 3,
  });

  final int itemCount;
  /*
  width: size.width * 0.27,
              height: size.height * 0.12,*/
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomShimmer(width: size.width, height: size.height * 0.45);
  }
}
