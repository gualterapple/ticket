import 'package:flutter/material.dart';
import 'package:ticket/utils/contants/colors.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.titulo_1,
    required this.titulo_2,
    required this.titulo_3,
    required this.descricao,
    required this.imagem,
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
            image: AssetImage(imagem),
          ),
          Row(
            children: [
              Image(
                width: 30,
                height: 30,
                image: const AssetImage('assets/images/screen-logo.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'SISTEMA INTEGRADO DE GESTÃO ACADÉMICA',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                titulo_1,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                titulo_2,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: TColors.primaryColor,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                titulo_3,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            child: Text(
              descricao,
              style: TextStyle(color: TColors.grayColor),
            ),
          )
        ],
      ),
    );
  }
}
