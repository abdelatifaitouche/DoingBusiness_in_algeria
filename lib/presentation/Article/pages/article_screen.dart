import 'package:doingbusiness/presentation/Article/widgets/article_app_bar.dart';
import 'package:doingbusiness/presentation/Article/widgets/article_body.dart';
import 'package:doingbusiness/presentation/Article/widgets/play_widget.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned.fill(
              child: CustomScrollView(
                slivers: [
                  ArticleAppBar(),
                  SliverToBoxAdapter(
                    child: Container(child: ArticleBody()),
                  ),
                  PlayWidget(),
                ],
              ),
            ),
          ],
        ));
  }
}
