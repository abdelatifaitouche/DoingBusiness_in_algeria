import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/Article/widgets/app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleAppBar extends StatefulWidget {
  const ArticleAppBar({super.key});

  @override
  State<ArticleAppBar> createState() => _ArticleAppBarState();
}

class _ArticleAppBarState extends State<ArticleAppBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      collapsedHeight: size.height * 0.15,
      pinned: true,
      floating: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: GestureDetector(
          onTap: (() => Get.back()),
          child: const AppBarIcon(
            icon: Icons.chevron_left,
            iconSize: 30,
          ),
        ),
      ),
      actions: const [AppBarIcon(icon: Icons.bookmark_outline_outlined)],
      leadingWidth: 40,
      backgroundColor: AppColors.primaryLight,
      iconTheme: const IconThemeData(color: Colors.white),
      expandedHeight: size.height * 0.4,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground
        ],
        background: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg_intro.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Text(
                      'Trending',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: const Text(
                        maxLines: 3,
                        'Loi de finances 2024 les derniere nouveauté depuis grant thornton',
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            height: 1.1,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text('Grant thornton •',
                          maxLines: 2,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              height: 1.1,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('01 01 2025',
                          maxLines: 2,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              height: 1.1,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          height: size.height * 0.09,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        ),
      ),
    );
  }
}
