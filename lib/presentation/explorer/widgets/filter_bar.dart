import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';
import 'package:doingbusiness/utils/categories_data/categories_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ArticleController());

    final categories = CategoriesData().categories;
    return Row(
      children: [
        FilterChip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            label: Text('All'),
            onSelected: (value) {
              controller.resetList();
            }),
        SizedBox(
          width: 10,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: categories.map((category) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: FilterChip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.purple,
                  label: Text(category['name'].toString()),
                  onSelected: (value) {
                    controller.chooseCat(category['id'].toString());
                  },
                ),
              );
            }).toList()),
      ],
    );
  }
}
