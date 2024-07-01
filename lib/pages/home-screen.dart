import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/contants/images.dart';
import 'package:ticket/widgets/big-title-text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.0, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha os filhos à esquerda
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        BigTitle(
                          texto: 'Olá, ',
                          alignment: TextAlign.start,
                        ),
                        BigTitle(
                          texto: 'Anderson !',
                          alignment: TextAlign.start,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Universidade Gregório Semedo.',
                      style: TextStyle(
                        color: TColors.grayColor,
                      ),
                      textAlign: TextAlign.start, // Alinha o texto à esquerda
                    )
                  ],
                ),
                Image(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.08,
                  image: AssetImage(TImagens.profileImage),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(
                gradient: TColors.linearGradient,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.08,
                          image: AssetImage(TImagens.logoUgs),
                        ),
                        SizedBox(
                          width: 30, // Defina a largura desejada
                          height: 30, // Defina a altura desejada
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: const BorderSide(
                                    width: 0, color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                              elevation: 0,
                              padding: EdgeInsets.all(
                                  0), // Ajusta o padding se necessário
                            ),
                            onPressed: () {},
                            child: const Icon(
                              Iconsax.arrow_right_14,
                              color: Colors.black,
                              size:
                                  14, // Ajuste o tamanho do ícone se necessário
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const BigTitle(
                      texto: '3º ano - 2022/2023',
                      alignment: TextAlign.start,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    Text(
                      'Ciência Política e administração do território',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: TColors.primaryBackGroundColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Matrícula ativa',
                    style: TextStyle(color: TColors.primaryColorDark),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: TColors.primaryBackGroundColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Sem guias pendentes',
                    style: TextStyle(color: TColors.primaryColorDark),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: TColors.primaryBackGroundColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Bolseiro',
                    style: TextStyle(color: TColors.primaryColorDark),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Guia recente',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    children: [
                      Text('Ver mais '),
                      Icon(
                        Iconsax.arrow_right_14,
                        color: Colors.black,
                        size: 14, // Ajuste o tamanho do ícone se necessário
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            SvgPicture.asset(TImagens.semGuias),
            SizedBox(height: 10,),
            Text('Sem guia para visualizar', style: TextStyle(color: TColors.grayColor),),

            SizedBox(height: 40,),
            SvgPicture.asset(TImagens.semDeclaracoes),
            SizedBox(height: 10,),
            Text('Sem declaração para visualizar', style: TextStyle(color: TColors.grayColor),)


          ],
        ),
      ),
    );
  }
}
