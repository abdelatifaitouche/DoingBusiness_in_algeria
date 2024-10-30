import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleModel {
  final String id;
  final String titre;
  final String blog;
  final String imageUrl;
  final String categoryId;
  final String pdfLink;

  ArticleModel(
      {required this.id,
      required this.titre,
      required this.blog,
      required this.imageUrl,
      required this.categoryId,
      required this.pdfLink});

  static ArticleModel empty() => ArticleModel(
      id: '', titre: '', blog: '', imageUrl: '', categoryId: '', pdfLink: '');

  toJson() {
    return {
      'id': id,
      'titre': titre,
      'blog': blog,
      'image': imageUrl,
      'categoryId': categoryId,
      'pdfLink': pdfLink
    };
  }

  factory ArticleModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return ArticleModel(
          id: document.id ?? '',
          titre: data['titre'] ?? '',
          blog: data['blog'] ?? '',
          imageUrl: data['image'] ?? "",
          categoryId: data['category'] ?? "",
          pdfLink: data['pdfLink'] ?? "");
    } else {
      return ArticleModel.empty();
    }
  }
}
