import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: SolidColors.primaryVariantColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.primaryVariantColor,
    systemNavigationBarIconBrightness: Brightness.dark,
    
  ));
  runApp(SplashScreen());
  
}
