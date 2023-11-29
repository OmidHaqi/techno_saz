import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1),
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  image: DecorationImage(
                      image: AssetImage(Address.svg_empety_profile),
                      fit: BoxFit.cover),
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
              padding: EdgeInsets.only(top: sizeH / 62.13),
              child: Container(
                width: sizeW / 1.67,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AdaptiveTheme.of(context).brightness ==
                              Brightness.light
                          ? SolidColors.textColor
                          : SolidColors.white,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            TextField(
                controller: nickName,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: size.height / 40, horizontal: 10),
                  hintText: Strings.nickname_str,
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
            TextField(
                controller: nickName,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: size.height / 40, horizontal: 10),
                  hintText: Strings.nickname_str,
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
            Padding(
              padding: EdgeInsets.only(top: sizeH / 58.25),
              child: SvgPicture.asset(
                Address.vc_share_Knowledge_others,
                fit: BoxFit.fill,
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
                  width: sizeW / 3.071428571428571,
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
                      Strings.countinu_str,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: AdaptiveTheme.of(context).brightness ==
                                  Brightness.light
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : SolidColors.textColor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
