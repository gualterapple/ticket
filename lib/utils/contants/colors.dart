import 'package:flutter/material.dart';

class TColors {
  TColors._();

  static Color primaryColor = Color(0XFF63cda8);
  static Color secundaryColor = Color.fromARGB(255, 160, 207, 30);
  static Color whiteColor = Color.fromARGB(255, 245, 245, 245);
  static Color grayColor = Color.fromARGB(255, 119, 119, 119);
  static Color ligthGrayColor = Color.fromARGB(255, 236, 236, 236);
  static Color borderGrayColor = Color.fromARGB(255, 236, 236, 236);

  static Color primaryColorDark = Color.fromARGB(255, 68, 143, 117);
  static Color primaryBackGroundColor = Color.fromARGB(255, 206, 236, 226);

  static Color screenBackGroundColor = const Color(0xFFF6F5FB);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Color(0xff63cda8), Color(0xff47b38e)],
  ); // LinearGradient
}
