import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ArticleController());
    final categories = [
      {'name': 'finance', 'id': '1'},
      {'name': 'sport', 'id': '2'},
    ];

    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FilterChip(
                  label: Text('all'),
                  onSelected: (value) {
                    controller.resetList();
                  }),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: categories.map((category) {
                    return FilterChip(
                      label: Text(category['name'].toString()),
                      onSelected: (value) {
                        controller.selectedCat.value = [];
                        controller.chooseCat(category['id'].toString());
                      },
                    );
                  }).toList()),
              Expanded(
                  child: Obx(
                () => ListView.builder(
                    itemCount: controller.filteredArticles.length,
                    itemBuilder: (context, index) {
                      final article = controller.filteredArticles[index];
                      return ListTile(
                        title: Text(article.titre),
                        subtitle: Text(article.categoryId),
                      );
                    }),
              ))
            ],
          ),
        )),
      ),
    );
  }
}
