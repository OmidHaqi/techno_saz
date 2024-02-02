import 'dart:async';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';

import 'package:techno_saz/view/home_page.dart';

customDialoge(
  BuildContext context, {
  final GestureTapCallback? onTap,
  final List<Widget>? actions,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      Timer(
        Duration(seconds: 5),
        () {
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
      );
      final sizeW = MediaQuery.of(context).size.width;
      return AlertDialog(
        scrollable: true,
        actions: actions,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36),
        ),
        content: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          width: sizeW / 18,
          child: FittedBox(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(42),
                      decoration: BoxDecoration(
                          color: AdaptiveTheme.of(context).brightness ==
                                  Brightness.light
                              ? SolidColors.primaryColor
                              : SolidColors.primaryVariantColor,
                          shape: BoxShape.circle),
                    ),
                    Icon(Icons.person,
                        size: 50,
                        color: AdaptiveTheme.of(context).brightness ==
                                Brightness.light
                            ? const Color.fromARGB(255, 255, 255, 255)
                            : SolidColors.primaryColor)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'تبریک!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 10),
                Text(
                  '\nحساب شما آماده استفاده است.\n در عرض چند ثانیه به صفحه اصلی \nهدایت خواهید شد',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                SpinKitCircle(
                  size: 40,
                  color:
                      AdaptiveTheme.of(context).brightness == Brightness.light
                          ? SolidColors.primaryColor
                          : SolidColors.primaryVariantColor,
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

customBottomSheet(
    {required BuildContext context,
    required TextEditingController controller,
    required var size,
    required String svgPic,
    required String icon,
    required String txtLiable,
    required String txtBtn,
    required String discretion,
    required Function onTap}) {
  return showModalBottomSheet(
    isScrollControlled: true,
    showDragHandle: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24.0),
        topRight: Radius.circular(24.0),
      ),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                        color: SolidColors.primaryColor,
                        width: 1.5,
                      ),
                      right: BorderSide(
                        color: const Color.fromRGBO(164, 99, 77, 1),
                        width: 1.5,
                      ),
                      left: BorderSide(
                        color: const Color.fromRGBO(164, 99, 77, 1),
                        width: 1.5,
                      ),
                      bottom: BorderSide(
                        color: const Color.fromRGBO(164, 99, 77, 1),
                        width: 1.5,
                      )),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  )),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          size.width / 6.05, 0, size.width / 6.05, 0),
                      child: SvgPicture.asset(
                        svgPic
                        // width: size.width / 1.64,
                        // height: size.height / 3.14,
                        ,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 42.8),
                      child: Text(
                        discretion,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(size.width / 11.02,
                          size.height / 34.51, size.width / 11.02, 0),
                      child: TextField(
                        controller: controller,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: size.height / 40, horizontal: 10),
                          hintText:txtLiable ,
                          suffixIconConstraints: BoxConstraints(
                            maxHeight: 48.0,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              icon,
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
                      padding: EdgeInsets.only(top: size.height / 30),
                      child: InkWell(
                        onTap: () {
                          onTap;
                        },
                        child: Container(
                          width: size.width / 3.071428571428571,
                          height: size.height / 18.64,
                          decoration: BoxDecoration(
                            color: SolidColors.primaryColor,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              txtBtn,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  color: SolidColors.onPrimaryColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
  
}
