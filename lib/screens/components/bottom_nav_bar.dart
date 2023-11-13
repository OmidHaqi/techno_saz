import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/screens/logIn_two_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: size.height / 13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              Adress.home,
              color: SolidColors.primaryColor,
              height: size.height / 31.06,
              width: size.width / 14.4,
            ),
            SvgPicture.asset(Adress.discover),
            InkWell(
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LogInTwoPage(),
                ),
              );
            },
              child: SvgPicture.asset(Adress.addArticle)),
            SvgPicture.asset(Adress.myArticlesIc),
            SvgPicture.asset(Adress.myProfile),
          ],
        ));
  }
}
