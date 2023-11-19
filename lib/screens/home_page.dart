import 'package:flutter/material.dart';
import 'package:techno_saz/screens/components/appBar.dart';

import 'components/bottom_nav_bar.dart';
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
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
            child: HomePagesAppBar(titleSize: titleSize),
          ),
        ),
        body: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              HomePagesBanner(size: size),
              Hashtag(size: size),
              RecentArticle(size: size),
              MyArticles(size: size)
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(size: size),
      ),
    );
  }
}
