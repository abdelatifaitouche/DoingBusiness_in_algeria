class ArticleModel {
  final String title;
  final String category;
  final String publishedDate;
  final String textContent;
  final String imgUrl;

  ArticleModel(
      {required this.title,
      required this.category,
      required this.publishedDate,
      required this.textContent,
      required this.imgUrl});
}
