import 'package:flutter/material.dart';
import 'package:ticket/pages/welcome-screen.dart';
import 'package:ticket/utils/contants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primaryColor,
      body: Container(
      child: Center(
          child: Container(
        child: Image.asset(
          "./assets/images/logo.png",
        ),
      )),
    ));
  }
}
