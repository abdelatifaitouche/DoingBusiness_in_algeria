import 'package:doingbusiness/presentation/Article/widgets/article_app_bar.dart';
import 'package:doingbusiness/presentation/Article/widgets/article_body.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: CustomScrollView(
            slivers: [
              ArticleAppBar(),
              SliverToBoxAdapter(
                child: Container(child: ArticleBody()),
              )
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            child: SizedBox(
              width: size.width,
              height: size.height * 0.2,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [Colors.white, Colors.white.withOpacity(0.3)],
                )),
              ),
            ))
      ],
    ));
  }
}
