import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class ProfilePageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                image: DecorationImage(
                    image: AssetImage(DataClass
                        .NotificationsPagePublicModelList[9]
                        .writerProfilePhotoUr),
                    fit: BoxFit.cover),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Address.ic_edit_profile,
                  width: sizeW / 23.8,
                  height: sizeH / 51.7,
                  colorFilter: ColorFilter.mode(
                      AdaptiveTheme.of(context).brightness == Brightness.dark
                          ? SolidColors.primaryVariantColor
                          : SolidColors.iconColor,
                      BlendMode.srcIn),
                ),
                Text(Strings.edit_profile_str),
              ],
            ),
            Container(
              width: sizeW / 1.67,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        AdaptiveTheme.of(context).brightness == Brightness.light
                            ? SolidColors.textColor
                            : SolidColors.white,
                    width: 1.0,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
