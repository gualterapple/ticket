import 'package:flutter/material.dart';
import 'package:ticket/utils/contants/text-sizes.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({
    super.key,
    required this.texto, required this.alignment
  });

  final String texto;
  final TextAlign alignment;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        texto,
        textAlign: alignment,
        style: TextStyle(
            fontSize: TTextSizes.bigTitle, fontWeight: FontWeight.bold),
      ),
    );
  }
}
