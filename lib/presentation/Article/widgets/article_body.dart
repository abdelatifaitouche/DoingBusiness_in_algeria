import 'package:flutter/material.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(20.0),
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
            't is a t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
