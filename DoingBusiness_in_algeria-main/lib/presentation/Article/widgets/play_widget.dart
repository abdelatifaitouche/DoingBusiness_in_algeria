import 'package:doingbusiness/presentation/Article/models/article_model.dart';
import 'package:doingbusiness/presentation/Article/pages/article_pdf.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
        width: size.width * 0.1,
        height: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 221, 221, 221).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text("Lire l'article", style: TextStyle(fontSize: 16)),
          GestureDetector(
              onTap: () => Get.to(
                    ArticlePdf(articleModel: articleModel),
                  ),
              child: Icon(Icons.play_circle_fill_outlined))
        ]),
      ),
    );
  }
}
