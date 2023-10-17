class HashTagModel {
  String title;
  HashTagModel({required this.title});
}

class ArticlePageModel {
  String idArticleUr;
  String imageArticleUr;
  String titleArticleUr;
  String writerProfilePhotoUr;
  String PublicationDateArticleUr;
  String readingTime;
  String ContentArticleUr;
  String likedArticleUr;
  String commentArticleUr;

  ArticlePageModel({
    required this.idArticleUr,
    required this.imageArticleUr,
    required this.titleArticleUr,
    required this.writerProfilePhotoUr,
    required this.PublicationDateArticleUr,
    required this.readingTime,
    required this.ContentArticleUr,
    required this.likedArticleUr,
    required this.commentArticleUr,
  });
}