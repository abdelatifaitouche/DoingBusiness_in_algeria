import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleModel {
  final String id;
  final String titre;
  final String blog;
  final String imageUrl;
  final String categoryId;

  ArticleModel(
      {required this.id,
      required this.titre,
      required this.blog,
      required this.imageUrl,
      required this.categoryId});

  static ArticleModel empty() =>
      ArticleModel(id: '', titre: '', blog: '', imageUrl: '', categoryId: '');

  toJson() {
    return {
      'id': id,
      'titre': titre,
      'blog': blog,
      'image': imageUrl,
      'categoryId': categoryId
    };
  }

  factory ArticleModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return ArticleModel(
          id: data['id'] ?? '',
          titre: data['titre'] ?? '',
          blog: data['blog'] ?? '',
          imageUrl: data['image'] ?? "",
          categoryId: data['category'] ?? "");
    } else {
      return ArticleModel.empty();
    }
  }
}
