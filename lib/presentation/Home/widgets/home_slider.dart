import 'package:carousel_slider/carousel_slider.dart';
import 'package:doingbusiness/presentation/Home/widgets/slider_item.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      options: CarouselOptions(
          height: size.height * 0.45,
          viewportFraction: 1,
          enlargeFactor: 0.5,
          autoPlay: true),
      itemCount: 3,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        child: SliderItem(),
      ),
    );
  }
}
