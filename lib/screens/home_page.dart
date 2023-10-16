import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/components/appBar.dart';

import 'components/hashtag.dart';
import 'components/home_pages_banner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double titleSize = 20;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 15, 12, 0),
              child: appBar(titleSize:titleSize),
            ),
            HomePagesBanner(size: size),
            Hashtag(size: size),
            Padding(
              padding: const EdgeInsets.all(12.0),
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
          ],
        ),
      ),
    );
  }
}
