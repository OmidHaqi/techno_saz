import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/themes.dart';
import 'package:techno_saz/view/splash_screen.dart';

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeData;
  MyApp({required this.savedThemeData});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
     SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: SolidColors.primaryVariantColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: SolidColors.primaryVariantColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return AdaptiveTheme(
      light: lightTheme(size),
      dark: darkTheme(size),
      initial: savedThemeData ?? AdaptiveThemeMode.light,
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeData = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeData: savedThemeData));
}
