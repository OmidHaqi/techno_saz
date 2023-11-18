import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  /**
   * 
   */
  final AdaptiveThemeMode? savedThemeMode;
  const MyApp({required this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    /**
     * 
     */
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
        scaffoldBackgroundColor: SolidColors.white,
        fontFamily: 'IranYekan',
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: const Color.fromARGB(255, 255, 255, 255),
            onPrimary: const Color.fromARGB(255, 0, 0, 0),
            secondary: SolidColors.primaryVariantColor,
            onSecondary: SolidColors.onPrimaryVariantColor,
            error: Colors.red,
            onError: SolidColors.white,
            background: SolidColors.white,
            onBackground: SolidColors.textColor,
            surface: SolidColors.white,
            onSurface: SolidColors.black),
      ),
      dark: ThemeData(
        fontFamily: 'IranYekan',
        scaffoldBackgroundColor: SolidColors.black,
        colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: const Color.fromARGB(255, 26, 21, 19),
            onPrimary: SolidColors.onPrimaryColor,
            secondary: const Color.fromARGB(255, 49, 23, 15),
            onSecondary: SolidColors.onPrimaryVariantColor,
            error: Colors.red,
            onError: SolidColors.white,
            background: const Color.fromARGB(255, 39, 39, 39),
            onBackground: const Color.fromARGB(255, 255, 255, 255),
            surface: const Color.fromARGB(255, 0, 0, 0),
            onSurface: const Color.fromARGB(255, 255, 255, 255)),
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('fa'), // Farsi
        ],
        /**
         * 
         */
        theme: theme,
        darkTheme: darkTheme,
        home: MySplash(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(
    savedThemeMode: savedThemeMode,
  ));
}
