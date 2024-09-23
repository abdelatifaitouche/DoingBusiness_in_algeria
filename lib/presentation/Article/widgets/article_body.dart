import 'package:doingbusiness/presentation/Article/models/article_model.dart';
import 'package:flutter/material.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
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
