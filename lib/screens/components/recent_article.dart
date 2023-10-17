import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/models/data_models.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class RecentArticle extends StatelessWidget {
  const RecentArticle({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.recentArticles_str,
                style: TextStyle(
                    color: SolidColors.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SvgPicture.asset(Adress.arrowLeft),
            ],
          ),
        ),
        Container(
          height: size.height / 2.78,
          width: size.width / 1.02,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: ArticlePageModelList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                child: Container(
                  width: size.width / 2.10,
                  height: size.height / 2.78,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 6, 0),
                        child: Container(
                          width: size.width / 2.22,
                          height: size.height / 4.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            image: DecorationImage(
                                image: AssetImage(
                                    ArticlePageModelList[index].imageArticleUr),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width / 2.8,
                              child: Text(
                                ArticlePageModelList[index].titleArticleUr,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: SolidColors.textColor),
                              ),
                            ),
                            SvgPicture.asset(Adress.more)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 1, 0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                              child: Container(
                                height: size.height / 37.28,
                                width: size.width / 17.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        ArticlePageModelList[index]
                                            .writerProfilePhotoUr),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              ArticlePageModelList[index].writersName,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(ArticlePageModelList[index]
                                .PublicationDateArticleUr),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
