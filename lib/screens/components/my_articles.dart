import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';

import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class MyArticles extends StatelessWidget {
  const MyArticles({
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
                Strings.myArticles_str,
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
        Container(
          height: size.height / 3,
          width: size.width / 1.02,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: DataClass.MyArticlePageModelList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 0, 0),
                child: Container(
                  width: size.width / 2,
                  height: size.height / 3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 6, 0),
                        child: Container(
                          width: size.width / 2.22,
                          height: size.height / 4.75,
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Color.fromARGB(78, 164, 99, 77),
                                  offset: Offset(2, 4)),
                            ],
                            borderRadius: BorderRadius.circular(35),
                            image: DecorationImage(
                                image: AssetImage(DataClass
                                    .MyArticlePageModelList[index]
                                    .imageArticleUr),
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
                                DataClass.MyArticlePageModelList[index]
                                    .titleArticleUr,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 18,
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
                        padding: const EdgeInsets.fromLTRB(8, 0, 1, 0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                              child: Container(
                                height: size.height / 37.28,
                                width: size.width / 17.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(400),
                                  image: DecorationImage(
                                      image: AssetImage(DataClass
                                          .MyArticlePageModelList[1]
                                          .writerProfilePhotoUr),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width / 5.60,
                              child: Text(
                                DataClass.MyArticlePageModelList[1].writersName,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(DataClass.MyArticlePageModelList[index]
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
