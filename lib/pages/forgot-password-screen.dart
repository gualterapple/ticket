import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/pages/verify-code-screen.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/widgets/big-title-text.dart';
import 'package:ticket/widgets/black-button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
              const BigTitle(texto: 'ESQUECEU A SUA SENHA ?', alignment: TextAlign.start,),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Insira o seu email e enviaremos um códigode verificação.',
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
                    height: 40,
                  ),
                  BlackButtom(
                    onPressed: () => Get.to(VerifyCodeScreen()),
                    texto: 'Continuar',
                    hasIcon: false,
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
