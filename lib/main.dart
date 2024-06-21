import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/pages/splash-screen.dart';
import 'package:ticket/utils/theme/theme.dart';

void main() {
  
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme);
  }
}
