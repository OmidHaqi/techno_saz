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
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Text(Strings.edit_profile_str,
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
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
            ),
            Text(
              "اولین مقاله خودت رو بنویس ..",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 29,
              ),
            ),
            Text(
              "دونسته هات رو با بقیه به اشتراک بگذار..",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 19,
              ),
            ),
            SvgPicture.asset(
              Address.vc_share_Knowledge_others,
              fit: BoxFit.fill,
            ),
            Container(
              width: sizeW / 3.071428571428571,
              height: sizeH/ 18.64,
              decoration: BoxDecoration(
                color: AdaptiveTheme.of(context).brightness == Brightness.light
                            ? SolidColors.primaryColor
                            : SolidColors.primaryVariantColor,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.countinu_str,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color:AdaptiveTheme.of(context).brightness == Brightness.light
                            ? const Color.fromARGB(255, 255, 255, 255)
                            : SolidColors.textColor),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
