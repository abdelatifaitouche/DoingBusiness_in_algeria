import 'package:doingbusiness/presentation/Article/pages/article_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeItem extends StatefulWidget {
  const HomeItem({super.key});

  @override
  State<HomeItem> createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ArticleScreen());
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        height: 120,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/bg_intro.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Category',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: Text(
                      maxLines: 2,
                      'Loi de finances 2024 les derniere nouveauté depuis grant thornton',
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          height: 1.1,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 260,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/images/logo_gt.png'),
                        width: 20,
                      ),
                      Text('GrantThornton .',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      Text('01 01 2025',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
