import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color.fromARGB(183, 147, 95, 1);
  static const Color primaryDarkColor = Color(0xFFFACC1D);

  static ThemeData lightThemeData = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(183, 147, 95, 1),
      selectedIconTheme: IconThemeData(
        size: 35,
        color: Color.fromRGBO(36, 36, 36, 1),
      ),
      selectedItemColor: Color.fromRGBO(36, 36, 36, 1),
      unselectedItemColor: Color.fromRGBO(248, 248, 248, 1),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Color.fromRGBO(248, 248, 248, 1),
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 16,
        fontFamily: "El Messiri",
        color: Color(0XFF222222),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black),
      bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black),
      bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.black),
      bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black),
    ),
    dividerTheme: DividerThemeData(
      color: primaryColor,
    ),
  );
  static ThemeData darkThemeData = ThemeData(
    primaryColor: primaryDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF141A2E),
      selectedIconTheme: IconThemeData(
        size: 35,
        color: Color.fromRGBO(36, 36, 36, 1),
      ),
      selectedItemColor: primaryDarkColor,
      unselectedItemColor: primaryDarkColor,
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Color.fromRGBO(248, 248, 248, 1),
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 16,
        fontFamily: "El Messiri",
        color: Color(0XFF222222),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white),
      bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white),
      bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.white),
      bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white),
    ),
    dividerTheme: DividerThemeData(
      color: primaryDarkColor,
    ),
  );
}
