import 'package:doingbusiness/data/repository/article_repository.dart';
import 'package:doingbusiness/presentation/Article/models/article_model.dart';
import 'package:doingbusiness/utils/loaders/loaders.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {
  static ArticleController get instance => Get.find();

  final isLoading = false.obs;
  RxList<ArticleModel> featuredArticles = <ArticleModel>[].obs;

  ArticleRepository articleRepo = Get.put(ArticleRepository());

  RxList selectedCat = [].obs;
  RxList<ArticleModel> filteredArticles = <ArticleModel>[].obs;
  RxBool selected = false.obs;

  @override
  void onInit() {
    fetchFeaturedArticles();
    resetList();
    super.onInit();
  }

  resetList() {
    filteredArticles.value = featuredArticles;
  }

  chooseCat(String index) {
    selectedCat.value = [];
    selectedCat.add(index);
    filteredArticles.value = featuredArticles
        .where(
          (p0) => p0.categoryId == index,
        )
        .toList();
    print(selectedCat);
  }

  Future<void> fetchFeaturedArticles() async {
    try {
      //start the loading
      print("fetching");
      isLoading.value = true;

      //fetch articles

      final articles = await articleRepo.getFeaturedArticles();

      //assign the articles

      featuredArticles.assignAll(articles);
    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh snap', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
