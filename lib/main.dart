import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/screens/splash_screen.dart';

void main() {
<<<<<<< HEAD
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: SolidColors.primaryVariantColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.primaryVariantColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
=======
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: SolidColors.primaryVariantColor,
  statusBarIconBrightness: Brightness.dark
  ,systemNavigationBarColor: SolidColors.primaryVariantColor));
>>>>>>> 476f04509ffee843d83c16595f6d8c01939c0a25
  runApp(SplashScreen());
}
