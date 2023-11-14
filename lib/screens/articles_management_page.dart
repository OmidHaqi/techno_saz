import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class ArticlesManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
        title: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:5),
                  child: SvgPicture.asset(Adress.ic_articles_managment),
                ),
                Text(
                  Strings.article_managment_str,
                  style: TextStyle(
                      fontSize:20,
                      color: SolidColors.textColor,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Align(alignment: Alignment.centerLeft,
                    child: SvgPicture.asset(Adress.arrowLeft)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
