import 'package:doingbusiness/presentation/Article/models/article_model.dart';
import 'package:doingbusiness/presentation/saved/controllers/saved_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SavedController());
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo_gt.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Grant thornton',
                      maxLines: 2,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          height: 1.1,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ],
              ),
              GestureDetector(
                onTap: () {
                  if (controller.checkIfSaved(article.id)) {
                    controller.unsaveArticle(article.id);
                  } else {
                    controller.saveArticle(article.id);
                  }
                },
                child: Obx(
                  () => Icon(
                    controller.checkIfSaved(article.id)
                        ? Icons.bookmark_added
                        : Icons.bookmark_add,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            article.titre,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
