import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ticket/pages/controllers/onboarding-controller.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/widgets/onboarding_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                imagem: 'assets/images/girl.png',
                titulo_1: 'A SUA VIDA',
                titulo_2: ' ACADÉMICA',
                titulo_3: 'NA PALMA DA MÃO',
                descricao:
                    'Tenha acesso aos seus dados académicos, de forma rápida, simples e intuitiva.',
              ),
              OnboardingPage(
                imagem: 'assets/images/boy.png',
                titulo_1: 'COM TODOS',
                titulo_2: ' RECURSOS',
                titulo_3: 'QUE PRECISAS',
                descricao:
                    'Visualize todas as suas notas, pagamentos e solicitações, sem perda de tempo.',
              ),
            ],
          ),
          Positioned(
            bottom: 100,
            left: 20,
            child: SmoothPageIndicator(
              effect:
                  ExpandingDotsEffect(activeDotColor: Colors.red, dotHeight: 6),
              controller: controller.pageController,
              onDotClicked: controller.dotNavigationClick,
              count: 2,
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Obx(
              () => controller.currentPageIndex.value == 0
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(width: 0, color: Colors.white),
                        ),
                        backgroundColor: Colors.black,
                        elevation: 0,
                      ),
                      onPressed: () => controller.nextPage(),
                      child: Icon(Iconsax.arrow_right),
                    )
                  : SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(width: 0, color: Colors.white),
                          ),
                          backgroundColor: Colors.black,
                          elevation: 0,
                        ),
                        onPressed: () => controller.nextPage(),
                        child: const Text('Continuar'),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
