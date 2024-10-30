import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_item.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_list.dart';
import 'package:doingbusiness/presentation/saved/controllers/saved_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(SavedController());
    final articleController = Get.put(ArticleController());
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Saved',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    )),
                const Text(
                  'Explore your saved Articles',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Obx(
                  () => ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.savedArticles.length,
                      itemBuilder: (BuildContext context, index) {
                        final articleId = controller.savedArticles[index];
                        final article =
                            articleController.featuredArticles.where(
                          (p0) => p0.id == articleId,
                        );
                        return HomeItem(article: article.first);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
