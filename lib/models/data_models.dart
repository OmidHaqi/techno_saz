

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
  String writersName;

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
    required this.writersName,
  });
}

class ArticleBookmarkedPage {
  String idArticleUr;
  String imageArticleUr;
  String titleArticleUr;
  String writerProfilePhotoUr;
  String PublicationDateArticleUr;
  String readingTime;
  String ContentArticleUr;
  String likedArticleUr;
  String commentArticleUr;
  String writersName;

  ArticleBookmarkedPage({
    required this.idArticleUr,
    required this.imageArticleUr,
    required this.titleArticleUr,
    required this.writerProfilePhotoUr,
    required this.PublicationDateArticleUr,
    required this.readingTime,
    required this.ContentArticleUr,
    required this.likedArticleUr,
    required this.commentArticleUr,
    required this.writersName,
  });
}

class NotificationsPagePublic {
  String idArticleUr;
  String imageArticleUr;
  String writerProfilePhotoUr;
  String aFewDaysOrHoursAgo;
  String writersName;
  String noticeTitle;
  String more;
  String whatTimeOfDay;
  NotificationsPagePublic({
    required this.idArticleUr,
    required this.imageArticleUr,
    required this.writerProfilePhotoUr,
    required this.aFewDaysOrHoursAgo,
    required this.writersName,
    required this.more,
    required this.whatTimeOfDay,
    required this.noticeTitle,
  });
}

class NotificationsPageSystem {
  String idArticleUr;
  String iconNoticeUr;
  String noticeText;
  String timeNotice;

  NotificationsPageSystem({
    required this.idArticleUr,
    required this.iconNoticeUr,
    required this.noticeText,
    required this.timeNotice,
  });
}

class ArticleManagementPagePublishedModel {
  String idArticleUr;
  String imageArticleUr;
  String titleArticleUr;
  String writerProfilePhotoUr;
  String PublicationDateArticleUr;
  String readingTime;
  String ContentArticleUr;
  String likedArticleUr;
  String commentArticleUr;
  String writersName;
  String Visit;

  ArticleManagementPagePublishedModel({
    required this.idArticleUr,
    required this.imageArticleUr,
    required this.titleArticleUr,
    required this.writerProfilePhotoUr,
    required this.PublicationDateArticleUr,
    required this.readingTime,
    required this.ContentArticleUr,
    required this.likedArticleUr,
    required this.commentArticleUr,
    required this.writersName,
    required this.Visit,
  });
}

class ArticleManagementPagedraftModel {
  String idArticleUr;
  String imageArticleUr;
  String titleArticleUr;
  String writerProfilePhotoUr;
  String PublicationDateArticleUr;
  String readingTime;
  String whatTimeOfDay;

  String writersName;
  String ContentArticleUr;

  ArticleManagementPagedraftModel({
    required this.idArticleUr,
    required this.imageArticleUr,
    required this.titleArticleUr,
    required this.writerProfilePhotoUr,
    required this.PublicationDateArticleUr,
    required this.readingTime,
    required this.ContentArticleUr,
    required this.writersName,
    required this.whatTimeOfDay,
  });
}

class ArticleManagementPageAwaitingConfirmationModel {
  String idArticleUr;
  String imageArticleUr;
  String titleArticleUr;
  String writerProfilePhotoUr;
  String PublicationDateArticleUr;
  String readingTime;
  String whatTimeOfDay;
  String writersName;
  String ContentArticleUr;

  ArticleManagementPageAwaitingConfirmationModel({
    required this.idArticleUr,
    required this.imageArticleUr,
    required this.titleArticleUr,
    required this.writerProfilePhotoUr,
    required this.PublicationDateArticleUr,
    required this.readingTime,
    required this.ContentArticleUr,
    required this.writersName,
    required this.whatTimeOfDay,
  });
}
