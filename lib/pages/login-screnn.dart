import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/contants/images.dart';
import 'package:ticket/utils/contants/sizes.dart';
import 'package:ticket/utils/contants/text-sizes.dart';

class LoginScreen extends StatefulWidget {
  final List<Map<String, String>> institutions = [
    {
      'name': 'UGS',
      'imageUrl': 'assets/images/logo-ugs.png',
      'descricao': 'Universidade Gregório Semedo'
    },
    {
      'name': 'IGS',
      'imageUrl': 'assets/images/logo-igs.png',
      'descricao': 'Instituto Superior Politécnico...'
    },
  ];

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String currentOption;

  @override
  void initState() {
    super.initState();
    currentOption = widget.institutions[0]['name']!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: TSizes.appBarHeight,
          bottom: TSizes.defaultSpace,
          right: TSizes.defaultSpace,
          left: TSizes.defaultSpace,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adicionado
          children: [
            Column(
              children: [
                Center(
                  child: Image(
                      height: 100, image: AssetImage(TImagens.screenLogo)),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'BEM VINDO AO SIGA!',
                    style: TextStyle(
                        fontSize: TTextSizes.bigTitle,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Selecione a sua instituição de ensino para poder começar.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColors.grayColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: widget.institutions.map((institution) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grayColor),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ListTile(
                        title: Row(
                          children: [
                            Image.asset(
                              institution['imageUrl']!,
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  institution['name']!,
                                  style: TextStyle(
                                    fontSize: TTextSizes.bigTitle,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  institution[
                                      'descricao']!, // Substitua pela descrição correta
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: TColors.grayColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: Radio<String>(
                          value: institution['name']!,
                          groupValue: currentOption,
                          activeColor: Colors.green,
                          onChanged: (String? value) {
                            setState(() {
                              currentOption = value!;
                            });
                          },
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            // Botão Continuar
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 20), // Ajuste o valor conforme necessário
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(width: 0, color: Colors.white),
                    ),
                    backgroundColor: Colors.black,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    textStyle: TextStyle(
                      fontSize: TTextSizes.bigTitle,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    // Ação do botão "Continuar"
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Continuar', style: TextStyle(fontSize: 18),),
                      SizedBox(width: 8), // Espaçamento entre o texto e o ícone
                      Icon(Iconsax.arrow_right),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
