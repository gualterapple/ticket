import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ticket/pages/confirm-phone-page.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/devices_utilities.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Stack(
        children: [
          PageView(
            children: const [
              OnboardingPage(imagem: 'assets/images/girl.png',
              titulo_1: 'A SUA VIDA',
              titulo_2: ' ACADÉMICA',titulo_3: 'NA PALMA DA MÃO', descricao: 'Tenha acesso aos seus dados académicos, de forma rápida, simples e intuitiva.'),
              OnboardingPage(imagem: 'assets/images/boy.png',
              titulo_1: 'COM TODOS',
              titulo_2: ' RECURSOS',titulo_3: 'QUE PRECISAS', descricao: 'Visualize todas as suas notas, pagamentos e solicitações, sem perda de tempo.')
            ],
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: 
          SmoothIndicator(offset: 0,count: 2,size: Size(40, 5),effect: ExpandingDotsEffect(activeDotColor: Colors.red, dotHeight: 6),))
        ],
      ));
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.titulo_1, required this.titulo_2, required this.titulo_3, required this.descricao, required this.imagem,
  });

  final String imagem, titulo_1, titulo_2, titulo_3, descricao;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              image: AssetImage(imagem)),
          Row(
            children: [
              Image(
                  width:  30,
                  height: 30,
                  image: const AssetImage('assets/images/screen-logo.png')),
                  SizedBox(width: 10,),
              Text(
                'SISTEMA INTEGRADO DE GESTÃO ACADÉMICA',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 14),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(titulo_1, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text(titulo_2, style: TextStyle(fontSize: 24, 
              fontWeight: FontWeight.bold, color: TColors.primaryColor,),)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(titulo_3,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ],
          ),
      
          Container(child: Text(descricao,
          style: TextStyle(color: TColors.grayColor),))
      
        ],
      ),
    );
  }
}
