import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleCateogryModel {
  final String articleId;
  final String categoryId;

  ArticleCateogryModel({required this.articleId, required this.categoryId});

  Map<String, dynamic> toJson() {
    return {"articleId": articleId, 'categoryId': categoryId};
  }

  factory ArticleCateogryModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return ArticleCateogryModel(
        articleId: data['articleId'] as String,
        categoryId: data['categoryId'] as String);
  }
}
