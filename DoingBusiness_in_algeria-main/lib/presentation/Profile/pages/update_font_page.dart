import 'package:doingbusiness/core/configs/theme/app_colors.dart';
import 'package:doingbusiness/presentation/Article/controllers/article_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateFontPage extends StatelessWidget {
  const UpdateFontPage({super.key});

  @override
  Widget build(BuildContext context) {
    final articleController = Get.put(ArticleController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new_outlined)),
            SizedBox(
              height: size.height * 0.08,
            ),
            Text(
              'Choose the font size',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w600, height: 1.02),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              height: 400,
              child: Obx(
                () => Text(
                  'Choosing a font size that suits your eyes reduces strain, enhances readability, and ensures a more comfortable and enjoyable reading experience.',
                  style: TextStyle(
                      fontSize: articleController.fontSizeValue.value),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {
                        if (articleController.fontSizeValue.value > 16) {
                          articleController.fontSizeValue.value -= 1;
                        }
                      },
                      child: Icon(
                        Icons.remove_circle_outline,
                        size: 30,
                      )),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Obx(
                    () => Text(
                      articleController.fontSizeValue.value.toString(),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        if (articleController.fontSizeValue.value < 36) {
                          articleController.fontSizeValue.value += 1;
                        }
                      },
                      child: Icon(
                        Icons.add_rounded,
                        size: 30,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryDark,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(260, 60),
                ),
                onPressed: () {
                  articleController
                      .saveFontSize(articleController.fontSizeValue.value);
                },
                child: const Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1.1,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
