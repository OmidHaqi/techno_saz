import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/view/articles_management_page.dart';
import 'package:techno_saz/view/custom_fab.dart';
import 'package:techno_saz/view/explore.dart';
import 'package:techno_saz/view/home.dart';
import 'package:techno_saz/view/profile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentTab = 0;

  _changeTab(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    double titleSize = 20.0;

    List _Pages = [
      Home(),
      Explore(),
      ArticlesManagementPage(
        titleSize: titleSize,
      ),
      ProfilePageOne()
    ];

    return SafeArea(
      child: Scaffold(
        body: _Pages[_currentTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: SolidColors.primaryColor,
          unselectedItemColor: SolidColors.primaryVariantColor,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (index) => _changeTab(index),
          items: [
            BottomNavigationBarItem(
              label: "خانه",
              icon: SvgPicture.asset(
                Address.home,
                height: 24,
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              label: "کاوش",
              icon: SvgPicture.asset(
                Address.discover,
                height: 24,
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              label: "مقاله ها",
              icon: SvgPicture.asset(
                Address.myArticlesIc,
                height: 24,
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              label: "پروفایل",
              icon: SvgPicture.asset(
                Address.myProfile,
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
        floatingActionButton: customFab(
          controller: controller,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
