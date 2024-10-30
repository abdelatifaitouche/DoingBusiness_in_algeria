import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_item.dart';
import 'package:doingbusiness/utils/loaders/home_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ArticleController());
    return Obx(() {
      if (controller.isLoading.value) {
        return HomeItemShimmer(
          itemCount: 5,
        );
      }
      if (controller.featuredArticles.isEmpty) {
        return Center(
          child: Text('no data available'),
        );
      } else {
        return ListView.builder(
          itemCount: controller.featuredArticles.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final article = controller.featuredArticles[index];
            return HomeItem(
              article: article,
            );
          },
        );
      }
    });
  }
}
