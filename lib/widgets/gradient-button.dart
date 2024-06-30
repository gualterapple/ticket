
import 'package:flutter/material.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/utils/contants/text-sizes.dart';

class GradientButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String texto;

  const GradientButton({super.key, required this.onPressed, required this.texto,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          onPressed: onPressed,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                texto,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              );

  }
}


