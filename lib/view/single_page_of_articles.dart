import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';

class SinglePageOfArticles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: sizeH / 2.24,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Address.img_fammily_single_page),
                  fit: BoxFit.cover),
            ),
            child: SafeArea(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: SolidColors.primaryVariantColor),
                          child: SvgPicture.asset(
                            Address.save,
                            width: 30,
                            height: 30,
                            colorFilter: ColorFilter.mode(
                                AdaptiveTheme.of(context).brightness ==
                                        Brightness.dark
                                    ? SolidColors.primaryVariantColor
                                    : SolidColors.iconColor,
                                BlendMode.srcIn),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: SolidColors.primaryVariantColor),
                          child: SvgPicture.asset(
                            Address.arrowLeft,
                            width: 30,
                            height: 30,
                            colorFilter: ColorFilter.mode(
                                AdaptiveTheme.of(context).brightness ==
                                        Brightness.dark
                                    ? SolidColors.primaryVariantColor
                                    : SolidColors.iconColor,
                                BlendMode.srcIn),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, sizeH / 27.41, 0, sizeH / 58.25),
            child: Container(
              width: sizeW / 1.171,
              height: sizeH / 15.53,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "پیشگیری از آسیب های اجتماعی",
                        style: TextStyle(
                            color: SolidColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: sizeH / 23.3,
                        width: sizeW / 10.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(400),
                          image: DecorationImage(
                              image: AssetImage(DataClass
                                  .ArticlePageModelList[2]
                                  .writerProfilePhotoUr),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "3 روز پیش",
                        style: TextStyle(
                            color: SolidColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5 دقیقه",
                        style: TextStyle(
                            color: SolidColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            width: sizeW / 1.1,
            height: sizeH / 2.74,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Text(
                DataClass.ArticleManagementPagepublishedModelList[1]
                    .ContentArticleUr,
                style: TextStyle(
                    fontSize: 16, height: 1.5, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        
        ],
      ),
      bottomNavigationBar: Container(width:double.infinity ,height: sizeH/14.56,color: Colors.amber,),
    );
  }
}
