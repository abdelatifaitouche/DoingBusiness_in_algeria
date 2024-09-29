import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';

import 'package:doingbusiness/presentation/Home/widgets/home_item.dart';
import 'package:doingbusiness/presentation/explorer/widgets/filter_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplorerScreen extends StatelessWidget {
  const ExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(ArticleController());
    final categories = [
      {'name': 'finance', 'id': '1'},
      {'name': 'sport', 'id': '2'},
    ];

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.02),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Discover',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  )),
              const Text('Daily financial news',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: size.height * 0.01,
              ),
              FilterBar(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Obx(
                () => ListView.builder(
                  itemCount: controller.filteredArticles.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final article = controller.filteredArticles[index];
                    return HomeItem(
                      article: article,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
