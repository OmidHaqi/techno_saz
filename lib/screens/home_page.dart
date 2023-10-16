import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/components/appBar.dart';

import 'components/hashtag.dart';
import 'components/home_pages_banner.dart';
import 'components/my_articles.dart';
import 'components/recent_article.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double titleSize = 20;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: SolidColors.onPrimaryColor,
          title:  Padding(
                padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
                child: appBar(titleSize: titleSize),
              ),),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
             
              HomePagesBanner(size: size),
              Hashtag(size: size),
              RecentArticle(size: size),
              MyArticles(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
