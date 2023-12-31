import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:techno_saz/res/colors.dart';

import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/view/home_page.dart';

class SecondProfilePage extends StatefulWidget {
  @override
  State<SecondProfilePage> createState() => _SecondProfilePageState();
}

class _SecondProfilePageState extends State<SecondProfilePage> {
  TextEditingController nickName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1),
              child: Container(
                height: 140,
                width: 140,
                child: SvgPicture.asset(
                  Address.svg_empety_profile,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: sizeH / 155.33),
              child: Row(
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
                  SizedBox(
                    width: sizeW / 53.75,
                  ),
                  Text("ویرایش عکس پروفایل",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(size.width / 11.02,
                  size.height / 34.51, size.width / 11.02, 0),
              child: TextField(
                controller: nickName,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: size.height / 40, horizontal: 10),
                  hintText: "دنیا آهنگری",
                  suffixIconConstraints: BoxConstraints(
                    maxHeight: 48.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      Address.ic_nickName_eadite,
                      colorFilter: ColorFilter.mode(
                          AdaptiveTheme.of(context).brightness ==
                                  Brightness.dark
                              ? SolidColors.primaryVariantColor
                              : SolidColors.iconColor,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width / 11.02, 10, size.width / 11.02, 0),
              child: TextField(
                controller: nickName,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: size.height / 40, horizontal: 10),
                  hintText: "donyaAhangari@gmail.com",
                  suffixIconConstraints: BoxConstraints(
                    maxHeight: 48.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      Address.ic_email_shape,
                      colorFilter: ColorFilter.mode(
                          AdaptiveTheme.of(context).brightness ==
                                  Brightness.dark
                              ? SolidColors.primaryVariantColor
                              : SolidColors.iconColor,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: sizeH / 59.47),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Container(
                  width: sizeW / 2,
                  height: sizeH / 18.64,
                  decoration: BoxDecoration(
                    color:
                        AdaptiveTheme.of(context).brightness == Brightness.light
                            ? SolidColors.primaryColor
                            : SolidColors.primaryVariantColor,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      Strings.log_out_str,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AdaptiveTheme.of(context).brightness ==
                                  Brightness.light
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : SolidColors.textColor),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: sizeH / 59.47),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Container(
                  width: sizeW / 2,
                  height: sizeH / 18.64,
                  decoration: BoxDecoration(
                    color:
                        AdaptiveTheme.of(context).brightness == Brightness.light
                            ? SolidColors.primaryColor
                            : SolidColors.primaryVariantColor,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      Strings.deleted_acount_srt,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AdaptiveTheme.of(context).brightness ==
                                  Brightness.light
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : SolidColors.textColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SvgPicture.asset(Address.svg_pale_feather),
            SizedBox(
              height: 15,
            ),
            Text(
              Strings.madeWith_str,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "1.0.0",
            )
          ],
        )),
      ),
    );
  }
}
