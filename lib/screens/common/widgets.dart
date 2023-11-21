import 'dart:async';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/screens/home_page.dart';

customDialoge(
  BuildContext context, {
  final GestureTapCallback? onTap,
  final List<Widget>? actions,}){
  return showDialog(
    context: context,
    builder: (context) {
      Timer(
        Duration(seconds: 1),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
        content: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          width: sizeW / 18,
          child: FittedBox(
            child: Column(
              children:[
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(42),
                      decoration: BoxDecoration(
                        
                          color:AdaptiveTheme.of(context).brightness==Brightness.light? SolidColors.primaryColor:SolidColors.primaryVariantColor ,
                          shape: BoxShape.circle),
                    ),
                    Icon(Icons.person, size: 50, color: Colors.white)
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
                  
                  color:AdaptiveTheme.of(context).brightness==Brightness.light? SolidColors.primaryColor:SolidColors.primaryVariantColor,
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
