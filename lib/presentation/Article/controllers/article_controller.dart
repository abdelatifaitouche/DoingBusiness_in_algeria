import 'package:doingbusiness/data/repository/article_repository.dart';
import 'package:doingbusiness/presentation/Article/models/article_model.dart';
import 'package:doingbusiness/utils/loaders/loaders.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {
  static ArticleController get instance => Get.find();

  final isLoading = false.obs;
  RxList<ArticleModel> featuredArticles = <ArticleModel>[].obs;
  ArticleRepository articleRepo = Get.put(ArticleRepository());

  @override
  void onInit() {
    fetchFeaturedArticles();
    super.onInit();
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
      print("fetched");
      print(featuredArticles[1].titre);
    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh snap', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
