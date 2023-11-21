import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/book_Marked_Page.dart';
import 'package:techno_saz/screens/notifications.dart';

import 'components/bottom_nav_bar.dart';
import 'components/hashtag.dart';
import 'components/home_pages_banner.dart';
import 'components/my_articles.dart';
import 'components/recent_article.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  
    void _openDrawer() {
    _key.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    double titleSize = 20;
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          width: 200,
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
                        onTap: () {},
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
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: InkWell(
                        onTap: () {
                          _openDrawer();
                        },
                        child: SvgPicture.asset(
                          Address.menu,
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
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: SvgPicture.asset(Address.feather),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                      child: Text(
                        Strings.technoSaz_str,
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                    )),
                    Switch(
                        inactiveThumbImage: AssetImage(Address.changeThemeDark),
                        activeThumbImage: AssetImage(Address.changeThemeLight),
                        value: AdaptiveTheme.of(context).mode.isDark,
                        onChanged: (value) {
                          if (value) {
                            AdaptiveTheme.of(context).setDark();
                          } else {
                            AdaptiveTheme.of(context).setLight();
                          }
                        }),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: SvgPicture.asset(
                        Address.search,
                        colorFilter: ColorFilter.mode(
                            AdaptiveTheme.of(context).brightness ==
                                    Brightness.dark
                                ? SolidColors.primaryVariantColor
                                : SolidColors.iconColor,
                            BlendMode.srcIn),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Notifications(titleSize: 25),
                              ),
                            );
                          },
                          child: SvgPicture.asset(
                            Address.bell,
                            colorFilter: ColorFilter.mode(
                                AdaptiveTheme.of(context).brightness ==
                                        Brightness.dark
                                    ? SolidColors.primaryVariantColor
                                    : SolidColors.iconColor,
                                BlendMode.srcIn),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookMarkedPage(titleSize: 25),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: SvgPicture.asset(
                          Address.save,
                          colorFilter: ColorFilter.mode(
                              AdaptiveTheme.of(context).brightness ==
                                      Brightness.dark
                                  ? SolidColors.primaryVariantColor
                                  : SolidColors.iconColor,
                              BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
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
