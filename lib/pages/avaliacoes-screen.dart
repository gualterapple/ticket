import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/contants/images.dart';
import 'package:ticket/widgets/big-title-text.dart';

class AvaliacoesScreen extends StatefulWidget {
  AvaliacoesScreen({super.key});

  @override
  State<AvaliacoesScreen> createState() => _AvaliacoesScreenState();
}

class _AvaliacoesScreenState extends State<AvaliacoesScreen> {
  List<String> list = <String>['Ano de matrícula', '2020', '2021', '2022'];
  String dropdownValue = 'Ano de matrícula';

  @override
  void initState() {
    super.initState();
    dropdownValue = list[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.screenBackGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BigTitle(
                  texto: 'Avaliações',
                  alignment: TextAlign.start,
                  fontWeight: FontWeight.bold,
                ),
                Text(
                  'Visualize resultados obtidos em cada avaliação',
                  style: TextStyle(color: TColors.grayColor),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: TextStyle(color: TColors.grayColor),
                underline: Container(
                  height: 1,
                  color: TColors.grayColor,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SvgPicture.asset(TImagens.semAvaliacoes),
            SizedBox(
              height: 20,
            ),
            Text(
              'Selecione o ano da matricula',
              style: TextStyle(color: TColors.grayColor),
            )
          ],
        ),
      ),
    );
  }
}
