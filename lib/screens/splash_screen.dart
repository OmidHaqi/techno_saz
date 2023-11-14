import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/login_page.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LogInPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SvgPicture.asset(
                  "assets/images/svg_splash.svg",
                ),
                Text(
                  Strings.technoSaz_str,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      color: SolidColors.textColor),
                ),
              ],
            ),
            SpinKitCircle(
              size: 45,
              color: SolidColors.primaryColor,
            ),
            Text(
              Strings.madeWith_str,
              style: TextStyle(color: SolidColors.textColor),
            )
          ],
        ),
      ),
    );
  }
}
