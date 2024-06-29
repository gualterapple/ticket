import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/utils/contants/text-sizes.dart';

class BlackButtom extends StatelessWidget {

  final VoidCallback onPressed;
  final String texto;
  final bool hasIcon;

  const BlackButtom({super.key, required this.onPressed, required this.texto, required this.hasIcon
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: const BorderSide(
              width: 3.0,
              color: Colors.transparent,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(width: 0, color: Colors.white),
            ),
            backgroundColor: Colors.black,
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 12),
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
              const SizedBox(width: 8),
              hasIcon ? const Icon(Iconsax.arrow_right): Container(),
            ],
          ),
        ),
      ),
    );
  }
}
