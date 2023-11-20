import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/screens/splash_screen.dart';

class MyApp extends StatelessWidget {

  final AdaptiveThemeMode? savedThemeData;
  MyApp({ required this.savedThemeData});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: SolidColors.primaryVariantColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: SolidColors.primaryVariantColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return AdaptiveTheme(
      light: ThemeData(
        fontFamily: 'IranYekan',
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: SolidColors.primaryColor,
              onPrimary: SolidColors.onPrimaryColor,
              secondary: SolidColors.primaryVariantColor,
              onSecondary: SolidColors.onPrimaryVariantColor,
              error: Colors.red,
              onError: SolidColors.white,
              background: SolidColors.white,
              onBackground: SolidColors.black,
              surface: SolidColors.primaryColor,
              onSurface: SolidColors.onPrimaryColor)),
      dark: ThemeData(
        fontFamily: 'IranYekan',
          colorScheme: ColorScheme(
              brightness: Brightness.dark,
              primary: SolidColors.primaryColor,
              onPrimary: SolidColors.onPrimaryColor,
              secondary: SolidColors.onPrimaryVariantColor,
              onSecondary: SolidColors.onPrimaryVariantColor,
              error: Colors.red,
              onError: SolidColors.white,
              background: SolidColors.black,
              onBackground: SolidColors.white,
              surface: SolidColors.primaryColor,
              onSurface: SolidColors.onPrimaryColor)),
      initial: savedThemeData?? AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('fa'), // Farsi
        ],
        theme: light,
        darkTheme: dark,
        home: MySplash(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

void main()async  {
  WidgetsFlutterBinding.ensureInitialized;
  final savedThemeData = await AdaptiveTheme.getThemeMode();
    runApp(MyApp(savedThemeData:savedThemeData ));
}
