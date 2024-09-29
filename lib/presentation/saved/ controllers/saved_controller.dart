import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SavedController extends GetxController {
  static SavedController get instance => Get.find();
  final GetStorage _storage = GetStorage();

  RxList savedArticles = [].obs;

  @override
  void onInit() {
    super.onInit();
    initSavedArticles();
  }

  //on click add the article to the storage

  bool checkIfSaved(String id) {
    if (!savedArticles.contains(id)) {
      return false;
    } else {
      return true;
    }
  }

  unsaveArticle(String id) {
    if (checkIfSaved(id)) {
      savedArticles.remove(id);
      _storage.write('saved_Articles', savedArticles);
    }
    print(savedArticles);
  }

  Future<void> saveArticle(String id) async {
    if (!savedArticles.contains(id)) {
      savedArticles.add(id);

      _storage.write('saved_Articles', savedArticles);
    }
    print(savedArticles);
  }

  initSavedArticles() {
    final box = _storage.read('saved_Articles');
    _storage.writeIfNull("saved_Articles", savedArticles);

    savedArticles.value = box;
  }
}
