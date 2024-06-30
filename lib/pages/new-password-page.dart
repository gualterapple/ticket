import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/pages/new-password-sucess-screen.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/widgets/gradient-button.dart';

import '../widgets/big-title-text.dart';

class NewPassWordScreen extends StatefulWidget {
  const NewPassWordScreen({super.key});

  @override
  State<NewPassWordScreen> createState() => _NewPassWordScreenState();
}

class _NewPassWordScreenState extends State<NewPassWordScreen> {
  bool _obscurePassword = true;

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
                const BigTitle(texto: 'CRIAR NOVA SENHA', alignment: TextAlign.start,),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Muito bem, Anderson ! agora podes criar uma nova senha para a sua  conta.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColors.grayColor),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Nova Senha', textAlign: TextAlign.left,),
                    SizedBox(height: 10,),
                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword ? Iconsax.eye : Iconsax.eye_slash,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    
                    Text('Confirmar Senha', textAlign: TextAlign.left,),
                    SizedBox(height: 10,),TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword ? Iconsax.eye : Iconsax.eye_slash,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GradientButton(
                      onPressed: () => Get.to(NewPasswordSuccess()),
                      texto: 'Redefinir senha',
                    )
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
