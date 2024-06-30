import 'package:flutter/material.dart';
import 'package:ticket/utils/contants/text-sizes.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({
    super.key,
    required this.texto,
    required this.alignment,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black, 
  });

  final String texto;
  final TextAlign alignment;
  final FontWeight fontWeight;
  final Color color; 

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: alignment,
      style: TextStyle(
        fontSize: TTextSizes.bigTitle,
        fontWeight: fontWeight,
        color: color, 
      ),
    );
  }
}
