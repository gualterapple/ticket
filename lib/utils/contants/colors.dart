import 'package:flutter/material.dart';

class TColors {
  TColors._();

  static Color primaryColor = Color(0XFF63cda8);
  static Color secundaryColor = Color.fromARGB(255, 160, 207, 30);
  static Color whiteColor = Color.fromARGB(255, 245, 245, 245);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  ); // LinearGradient
}
