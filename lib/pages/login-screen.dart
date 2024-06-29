import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/services/api.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/contants/images.dart';
import 'package:ticket/utils/contants/sizes.dart';
import 'package:ticket/utils/contants/text-sizes.dart';
import 'package:dio/dio.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final dio = Dio();
  final api = API();

  @override
  void initState() {
    super.initState();
  }

  void getHttp() async {
    final response = await dio.get('https://catfact.ninja/breeds');
    print(response);
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
                        borderRadius: BorderRadius.circular(
                            5.0), // Borda arredondada igual ao botão
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                              width: 3.0,
                              color: Colors.transparent,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            backgroundColor: Colors
                                .transparent, // Fundo transparente para mostrar o gradiente
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            textStyle: TextStyle(
                              fontSize: TTextSizes.bigTitle,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: CircularProgressIndicator(color: TColors.primaryColor,),
                                );
                              },
                              barrierDismissible:
                                  false, // Evita que o usuário feche o diálogo ao tocar fora
                            );
                            await api.login();
                            Navigator.of(context).pop();
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
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: TColors.grayColor,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  Text(
                    'ou',
                    style: TextStyle(
                        color: TColors.grayColor, fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                      child: Divider(
                    color: TColors.grayColor,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ))
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      width: 1.0,
                      color: TColors.ligthGrayColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    backgroundColor: TColors
                        .borderGrayColor, // Fundo transparente para mostrar o gradiente
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    textStyle: TextStyle(
                      fontSize: TTextSizes.bigTitle,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(height: 20, image: AssetImage(TImagens.gmailLogo)),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Entrar com Google',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(height: 20, image: AssetImage(TImagens.ockayulaLogo)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Portal Okayula')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
