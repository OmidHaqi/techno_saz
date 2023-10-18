import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/components/appBar.dart';
import 'package:techno_saz/screens/home_page.dart';

// ignore: must_be_immutable
class BookMarkedPage extends StatelessWidget {
  double titleSize;
  BookMarkedPage({required this.titleSize});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: SolidColors.white,
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: SvgPicture.asset(Adress.save),
                  ),
                  Text(
                    Strings.bookmarked_str,
                    style: TextStyle(
                        fontSize: titleSize,
                        color: SolidColors.textColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset(Adress.arrowLeft))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Align(alignment: Alignment.centerLeft,
                child: Text(
                  "24" + Strings.article_str,
                  style: TextStyle(
                      fontSize: 14,
                      color: SolidColors.textColor,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
