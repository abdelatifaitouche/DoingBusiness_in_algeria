import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';
import 'package:doingbusiness/presentation/Article/controllers/category_controller.dart';
import 'package:doingbusiness/presentation/Home/widgets/category_item.dart';
import 'package:doingbusiness/utils/loaders/category_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});
  //category id
  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    final controller = Get.put(ArticleController());
    return Obx(() {
      if (categoryController.isLoading.value) {
        return CategoryShimmer();
      }

      if (categoryController.featuredCategory.isEmpty) {
        return Center(
          child: Text('no data found'),
        );
      }
      return SizedBox(
        height: 40,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: categoryController.featuredCategory.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final category = categoryController.featuredCategory[index];
              return CategoryItem(
                text: category.name,
                selected: false,
                onTap: (selected) {
                  return selected;
                },
              );
            }),
      );
    });
  }
}
