import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/pages/login-screen.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/contants/images.dart';
import 'package:ticket/utils/contants/sizes.dart';
import 'package:ticket/utils/contants/text-sizes.dart';
import 'package:ticket/widgets/big-title-text.dart';
import 'package:ticket/widgets/black-button.dart';

class ChooseInstitutionScreen extends StatefulWidget {
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

  ChooseInstitutionScreen({super.key});

  @override
  State<ChooseInstitutionScreen> createState() =>
      _ChooseInstitutionScreenState();
}

class _ChooseInstitutionScreenState extends State<ChooseInstitutionScreen> {
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
                const SizedBox(height: 20),
                const Center(
                  child: BigTitle(texto: 'BEM VINDO AO SIGA!'),
                ),
                const SizedBox(height: 20),
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
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.03,
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
            BlackButtom(onPressed: () => Get.to(const LoginScreen()), texto: 'Continuar', hasIcon: true,)
          ],
        ),
      ),
    );
  }
}
