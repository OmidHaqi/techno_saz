import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
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
        drawer: Drawer(
          backgroundColor: SolidColors.white,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      SvgPicture.asset(
                        "assets/images/svg_splash.svg",
                        height: 200,
                        width: 150,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Strings.technoSaz_str,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: SolidColors.primaryVariantColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          Address.ic_profile_drewer,
                          colorFilter: ColorFilter.mode(
                              AdaptiveTheme.of(context).brightness ==
                                      Brightness.dark
                                  ? SolidColors.primaryVariantColor
                                  : SolidColors.iconColor,
                              BlendMode.srcIn),
                        ),
                        title: Text("پروفایل"),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          Address.ic_share_drewer,
                          colorFilter: ColorFilter.mode(
                              AdaptiveTheme.of(context).brightness ==
                                      Brightness.dark
                                  ? SolidColors.primaryVariantColor
                                  : SolidColors.iconColor,
                              BlendMode.srcIn),
                        ),
                        title: Text("اشتراک گذاری"),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          Address.ic_update_drewer,
                          colorFilter: ColorFilter.mode(
                              AdaptiveTheme.of(context).brightness ==
                                      Brightness.dark
                                  ? SolidColors.primaryVariantColor
                                  : SolidColors.iconColor,
                              BlendMode.srcIn),
                        ),
                        title: Text("بروزرسانی"),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          Address.ic_github_drewer,
                          colorFilter: ColorFilter.mode(
                              AdaptiveTheme.of(context).brightness ==
                                      Brightness.dark
                                  ? SolidColors.primaryVariantColor
                                  : SolidColors.iconColor,
                              BlendMode.srcIn),
                        ),
                        title: Text("گیت هاب"),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          Address.ic_about_drewer,
                          colorFilter: ColorFilter.mode(
                              AdaptiveTheme.of(context).brightness ==
                                      Brightness.dark
                                  ? SolidColors.primaryVariantColor
                                  : SolidColors.iconColor,
                              BlendMode.srcIn),
                        ),
                        title: Text("درباره تکنوساز"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
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
