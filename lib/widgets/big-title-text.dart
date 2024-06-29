import 'package:flutter/material.dart';
import 'package:ticket/utils/contants/text-sizes.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({
    super.key,
    required this.texto,
  });

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        texto,
        style: TextStyle(
            fontSize: TTextSizes.bigTitle, fontWeight: FontWeight.bold),
      ),
    );
  }
}
