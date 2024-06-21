import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket/pages/confirm-phone-page.dart';
import 'package:ticket/utils/contants/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: GestureDetector(
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ConfirmPhoneScreen();
        })),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/welcome-background.jpg'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16.0, bottom: 30.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bem-vindo/a',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 25,
                    color: TColors.whiteColor,
                  )),
                ),
                Text(
                  'Buombo Táxi',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 36,
                          color: TColors.primaryColor,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  'Viaje no melhor conforto de sempre, com o melhor aplicativo de táxi personalizado.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    color: TColors.primaryColor,
                  )),
                ),
              ],
            ),
          ),
        ),
      ));
}
