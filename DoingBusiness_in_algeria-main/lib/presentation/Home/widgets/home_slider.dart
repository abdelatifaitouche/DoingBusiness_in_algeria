import 'package:carousel_slider/carousel_slider.dart';
import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';
import 'package:doingbusiness/presentation/Article/pages/article_screen.dart';
import 'package:doingbusiness/presentation/Home/widgets/slider_item.dart';
import 'package:doingbusiness/utils/loaders/slider_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(ArticleController());
    return Obx(() {
      if (controller.isLoading.value) {
        return SliderItemShimmer();
      } else
        return CarouselSlider.builder(
            options: CarouselOptions(
                height: size.height * 0.45,
                viewportFraction: 1,
                enlargeFactor: 0.5,
                autoPlay: true),
            itemCount: 3,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              final article = controller.featuredArticles[itemIndex];
              return Container(
                child: SliderItem(
                  article: article,
                  onTap: () => Get.to(ArticleScreen(
                    article: article,
                  )),
                ),
              );
            });
    });
  }
}
