import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_categories.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_header.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_item.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_list.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_slider.dart';
import 'package:doingbusiness/utils/loaders/home_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(ArticleController());

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.02),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*HOME HEADER */
              HomeHeader(),
              SizedBox(
                height: size.height * 0.02,
              ),

              /*HOME SLIDER */
              HomeSlider(),
              SizedBox(
                height: size.height * 0.02,
              ),

              //CATEGORIES
              HomeCategories(),
              SizedBox(
                height: size.height * 0.01,
              ),
              /* SEPARATE TITLEs */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),

              /*HOME ITEMS */
              Obx(() {
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
                      return HomeItem(article: article);
                    },
                  );
                }
              })
            ],
          ),
        ),
      ),
    ));
  }
}
