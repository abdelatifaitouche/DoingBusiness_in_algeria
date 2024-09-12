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
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(ArticleScreen());
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
        width: double.infinity,
        height: size.height * 0.12,
        child: Row(
          children: [
            Container(
              width: size.width * 0.27,
              height: size.height * 0.12,
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
                  height: size.height * 0.01,
                ),
                Container(
                  width: size.width * 0.65,
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
                  height: size.height * 0.01,
                ),
                Container(
                  width: size.width * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/images/logo_gt.png'),
                        width: size.width * 0.05,
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
