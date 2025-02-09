import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';
import 'package:doingbusiness/presentation/Article/models/article_model.dart';
import 'package:doingbusiness/presentation/Article/widgets/article_app_bar.dart';
import 'package:doingbusiness/presentation/Article/widgets/article_body.dart';
import 'package:doingbusiness/presentation/Article/widgets/play_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    final articleController = Get.put(ArticleController());

    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: CustomScrollView(
            slivers: [
              ArticleAppBar(article: article),
              articleController.isLoading.value
                  ? Text('is loading')
                  : SliverToBoxAdapter(
                      child: Container(
                          child: ArticleBody(
                        article: article,
                      )),
                    ),
              articleController.isLoading.value
                  ? Text('is loading')
                  : PlayWidget(
                      articleModel: article,
                    )
            ],
          ),
        ),
      ],
    ));
  }
}
