import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/widgets/big-title-text.dart';
import 'package:ticket/widgets/black-button.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Voltar',
            style: TextStyle(fontSize: 14),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BigTitle(texto: 'VERIFICAÇÃO DO CÓDIGO'),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Insira o código que foi enviado para o seu email nos campos abaixo.',
                textAlign: TextAlign.center,
                style: TextStyle(color: TColors.grayColor),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: 'E-mail',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlackButtom(
                    onPressed: () => Get.to(VerifyCodeScreen()),
                    texto: 'Continuar',
                    hasIcon: false,
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text('Não recebeu o código ?'),
                      Text(
                        ' Reenviar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
