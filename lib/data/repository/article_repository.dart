import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doingbusiness/presentation/Article/models/article_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ArticleRepository extends GetxController {
  static ArticleRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  //get featured articles

  Future<List<ArticleModel>> getFeaturedArticles() async {
    try {
      print('fetching from repo');
      final snapshot = await _db.collection('Articles').limit(4).get();
      print('getting the snapshot');

      // return a list of articles

      return snapshot.docs.map((e) => ArticleModel.fromSnapshot(e)).toList();
    } on FirebaseException catch (e) {
      throw e.message.toString();
    } on PlatformException catch (e) {
      throw e.message.toString();
    } catch (e) {
      throw e;
    }
  }
}
