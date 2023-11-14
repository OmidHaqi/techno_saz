import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/screens/splash_screen.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        
        ),
      dark: ThemeData(
        
        ),
      initial: AdaptiveThemeMode.light,
      builder:(theme,darkTheme)=> MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('fa'), // Farsi
        ],
        theme: ThemeData(fontFamily: 'IranYekan'),
        
        home: MySplash(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: SolidColors.primaryVariantColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.primaryVariantColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}
