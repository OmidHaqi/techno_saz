import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techno_saz/res/colors.dart';

ThemeData lightTheme(Size size) {
  return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
            EdgeInsets.symmetric(vertical: size.height / 40, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 2, color: SolidColors.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: SolidColors.iconColor, width: 2),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
            color: SolidColors.onPrimaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            fontFamily: 'IranYekan',
          )),
          backgroundColor: MaterialStateProperty.all(SolidColors.primaryColor),
          foregroundColor: MaterialStateProperty.all(SolidColors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: SolidColors.textColor,
            fontFamily: 'IranYekan',
          )),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 242, 242, 242)),
          foregroundColor: MaterialStateProperty.all(SolidColors.textColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
        ),
      ),
      fontFamily: 'IranYekan',
      tabBarTheme: TabBarTheme(
          labelColor: SolidColors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: SolidColors.primaryColor),
      scaffoldBackgroundColor: SolidColors.white,
      appBarTheme: AppBarTheme(
          backgroundColor: SolidColors.white,
          titleTextStyle: TextStyle(
              color: SolidColors.textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'IranYekan')),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: SolidColors.primaryColor,
          onPrimary: SolidColors.onPrimaryColor,
          secondary: SolidColors.primaryColor,
          onSecondary: SolidColors.onPrimaryVariantColor,
          error: Colors.red,
          onError: SolidColors.white,
          background: SolidColors.white,
          onBackground: SolidColors.textColor,
          surface: SolidColors.primaryColor,
          onSurface: SolidColors.onPrimaryColor));
}

ThemeData darkTheme(Size size) {
  return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
            EdgeInsets.symmetric(vertical: size.height / 40, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              width: 1, color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: const Color.fromARGB(255, 255, 255, 255), width: 2),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
            color: SolidColors.onPrimaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            fontFamily: 'IranYekan',
          )),
          backgroundColor:
              MaterialStateProperty.all(SolidColors.primaryVariantColor),
          foregroundColor: MaterialStateProperty.all(
            (SolidColors.textColor),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: SolidColors.textColor,
            fontFamily: 'IranYekan',
          )),
          backgroundColor:
              MaterialStateProperty.all(SolidColors.primaryVariantColor),
          foregroundColor: MaterialStateProperty.all(SolidColors.textColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
        ),
      ),
      fontFamily: 'IranYekan',
      tabBarTheme: TabBarTheme(
          labelColor: const Color.fromARGB(255, 255, 255, 255),
          unselectedLabelColor: Colors.grey,
          indicatorColor: SolidColors.primaryVariantColor),
      scaffoldBackgroundColor: const Color.fromARGB(255, 39, 39, 39),
      appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 39, 39, 39),
          titleTextStyle: TextStyle(
              color: SolidColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'IranYekan')),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: SolidColors.primaryVariantColor,
          onPrimary: const Color.fromARGB(255, 255, 255, 255),
          secondary: SolidColors.primaryVariantColor,
          onSecondary: SolidColors.onPrimaryVariantColor,
          error: Colors.red,
          onError: SolidColors.white,
          background: const Color.fromARGB(255, 39, 39, 39),
          onBackground: SolidColors.white,
          surface: const Color.fromARGB(255, 0, 0, 0),
          onSurface: const Color.fromARGB(255, 255, 255, 255)));
}
