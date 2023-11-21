import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          padding: EdgeInsets.fromLTRB(
              size.width / 30.71, 0, size.width / 30.71, size.height / 66.57),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.recentArticles_str,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SvgPicture.asset(
                Address.arrowLeft,
                colorFilter: ColorFilter.mode(
                    AdaptiveTheme.of(context).brightness == Brightness.dark
                        ? SolidColors.primaryVariantColor
                        : SolidColors.iconColor,
                    BlendMode.srcIn),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              size.width / 30.71, 0, size.width / 30.71, size.height / 66.57),
          child: Container(
            // color: Colors.amber,
            height: size.height / 3,
            width: size.width / 1.02,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: DataClass.ArticlePageModelList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                blurRadius: 1,
                                color: AdaptiveTheme.of(context).brightness ==
                                        Brightness.light
                                    ? Color.fromARGB(43, 164, 99, 77)
                                    : Color.fromARGB(12, 255, 255, 255),
                                offset: Offset(1, 2)),
                          ],
                          
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      // color: Colors.amber,
                      width: size.width / 2.5,
                      height: size.height / 3.9,
                      child: Column(
                        children: [
                          Container(
                            width: size.width / 2.5,
                            height: size.height / 5.3,
                            decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(DataClass
                                      .ArticlePageModelList[index]
                                      .imageArticleUr),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 12, 6, 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: Colors.blue,
                                  width: size.width / 3.3,
                                  height: size.height / 20,
                                  child: Text(
                                    DataClass.ArticlePageModelList[index]
                                        .titleArticleUr,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  Address.more,
                                  colorFilter: ColorFilter.mode(
                                      AdaptiveTheme.of(context).brightness ==
                                              Brightness.dark
                                          ? SolidColors.primaryVariantColor
                                          : SolidColors.iconColor,
                                      BlendMode.srcIn),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 0, 10, 0),
                                  child: Container(
                                    height: size.height / 37.28,
                                    width: size.width / 17.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(400),
                                      image: DecorationImage(
                                          image: AssetImage(DataClass
                                              .ArticlePageModelList[index]
                                              .writerProfilePhotoUr),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width / 7,
                                  child: Text(
                                    DataClass.ArticlePageModelList[index]
                                        .writersName,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  DataClass.ArticlePageModelList[index]
                                      .PublicationDateArticleUr,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
