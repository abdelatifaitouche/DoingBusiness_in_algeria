import 'package:doingbusiness/presentation/Article/models/article_model.dart';
import 'package:doingbusiness/presentation/Article/widgets/article_app_bar.dart';
import 'package:doingbusiness/presentation/Article/widgets/article_body.dart';
import 'package:doingbusiness/presentation/Article/widgets/play_widget.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned.fill(
              child: CustomScrollView(
                slivers: [
                  ArticleAppBar(article: article),
                  SliverToBoxAdapter(
                    child: Container(
                        child: ArticleBody(
                      article: article,
                    )),
                  ),
                  PlayWidget(
                    articleModel: article,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}