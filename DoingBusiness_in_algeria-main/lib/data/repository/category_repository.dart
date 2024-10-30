import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doingbusiness/presentation/Article/models/categorie_model.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  //get all categories
  Future<List<CategorieModel>> fetchAllCategories() async {
    try {
      final snapshot = await _db.collection("categories").get();
      final list =
          snapshot.docs.map((e) => CategorieModel.fromSnapshot(e)).toList();
      return list;
    } catch (e) {
      throw "something went south";
    }
  }
}
