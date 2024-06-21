import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: TextTheme(
          headlineLarge: TextStyle().copyWith(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          headlineMedium: TextStyle().copyWith(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black)),
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          side: const BorderSide(color: Colors.blue),
          padding: const EdgeInsets.symmetric(vertical: 18)
        ),
      ));

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.red,
      textTheme: TextTheme(
          headlineLarge: TextStyle().copyWith(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          headlineMedium: TextStyle().copyWith(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white)),
      scaffoldBackgroundColor: Colors.green);
}
