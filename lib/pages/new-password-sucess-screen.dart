import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/pages/login-screen.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/contants/images.dart';
import 'package:ticket/widgets/big-title-text.dart';
import 'package:ticket/widgets/black-button.dart';

class NewPasswordSuccess extends StatefulWidget {
  const NewPasswordSuccess({super.key});

  @override
  State<NewPasswordSuccess> createState() => _NewPasswordSuccessState();
}

class _NewPasswordSuccessState extends State<NewPasswordSuccess> {
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image(
                      height: 300, image: AssetImage(TImagens.passwordIcone)),
                ),
                const BigTitle(
                    texto: 'SENHA REDEFINIDA COM SUCESSO !',
                    alignment: TextAlign.center),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Tudo certo ! agora podes aceder a sua conta com a tua nova senha.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColors.grayColor),
                ),
                const SizedBox(
                  height: 40,
                ),
                BlackButtom(
                  onPressed: () => Get.to(LoginScreen()),
                  texto: 'Continuar',
                  hasIcon: true,
                )
              ],
            ),
          ),
        ));
  }
}
