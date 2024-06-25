import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/contants/images.dart';
import 'package:ticket/utils/contants/sizes.dart';
import 'package:ticket/utils/contants/text-sizes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
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
                      'COMECE AGORA!',
                      style: TextStyle(
                          fontSize: TTextSizes.bigTitle,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Aceda a sua conta de estudante usando as suas credenciais do Portal Okayula.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColors.grayColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Form(
                    child: Column(children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: 'E-mail',
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: 'Senha',
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Esqueceu a sua senha ? ',
                            style: TextStyle(color: TColors.grayColor),
                          ),
                          Text(
                            'clique aqui.',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ]),
                  )
                ],
              ),
              // Botão Continuar
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 20), // Ajuste o valor conforme necessário
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Container(
            decoration: BoxDecoration(
              gradient: TColors.linearGradient,
              borderRadius: BorderRadius.circular(5.0), // Borda arredondada igual ao botão
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide.none, // Remove a borda
            
          ),
          backgroundColor: Colors.transparent, // Fundo transparente para mostrar o gradiente
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
            Text(
              'Entrar',
              style: TextStyle(fontSize: 18),
            ),
          ],
                ),
              ),
            ),
          )
          
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
