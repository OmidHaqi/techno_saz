import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/res/common/dialoge.dart';


class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, size.height / 7.831, 0, 0),
          child: Column(
            children: [
              SvgPicture.asset(
                Address.welcom_vc,
                width: size.width / 1.72,
                height: size.height / 3.728,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height / 18.64, 0, 0),
                child: Text(
                  Strings.letsGo_str,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 48,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, size.height / 21.674418, 0, size.height / 109.647058823),
                child: SizedBox(
                  width: size.width / 1.0969387,
                  height: size.height / 14.5625,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        Strings.byGoogle_str,
                      ),
                      icon: SvgPicture.asset(
                        Address.ic_gmail,
                        colorFilter: ColorFilter.mode(
                            AdaptiveTheme.of(context).brightness ==
                                    Brightness.dark
                                ? SolidColors.iconColor
                                : SolidColors.black,
                            BlendMode.srcIn),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height / 109.647058823, 0,
                    size.height / 109.647058823),
                child: SizedBox(
                  width: size.width / 1.0969387,
                  height: size.height / 14.5625,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        Strings.byEmail_str,
                      ),
                      icon: SvgPicture.asset(
                        Address.ic_mail,
                        colorFilter: ColorFilter.mode(
                            AdaptiveTheme.of(context).brightness ==
                                    Brightness.dark
                                ? SolidColors.iconColor
                                : SolidColors.black,
                            BlendMode.srcIn),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height / 109.647058823, 0,
                    size.height / 25.88888888888889),
                child: SizedBox(
                  width: size.width / 1.0969387,
                  height: size.height / 14.5625,
                  child: ElevatedButton(
                    onPressed: () {
                      customeDialogee(context);
                    },
                    child: Text(
                      Strings.skip_str,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: size.width / 35.83333333333333),
                    child: Container(
                      width: size.width / 2.4,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AdaptiveTheme.of(context).brightness ==
                                    Brightness.light
                                ? SolidColors.textColor
                                : SolidColors.white,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    Strings.or_str,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: size.width / 35.83333333333333),
                    child: Container(
                      width: size.width / 2.4,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AdaptiveTheme.of(context).brightness ==
                                    Brightness.light
                                ? SolidColors.textColor
                                : SolidColors.white,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    0, size.height / 34.51, 0, 0),
                width: size.width / 1.1969387,
                height: size.height / 20.5625,
                decoration: BoxDecoration(
                  color: SolidColors.primaryColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.enterPassword_str,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: SolidColors.onPrimaryColor),
                    ),
                  ],
                ),
              ),
              Text(
                Strings.creatAccont,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: SolidColors.primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
