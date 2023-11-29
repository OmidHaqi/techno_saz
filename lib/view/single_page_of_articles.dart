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
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ],
      ),
    );
  }
}
