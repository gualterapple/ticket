import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/pages/login-screnn.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(int index) {
    try {
      currentPageIndex.value = index;
      print(currentPageIndex.value);
    } catch (e) {
      print('Ocorreu um erro: $e');
    }
  }

  /// Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 1) {
      // Navegação para a tela de login ou próxima tela
      Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & jump to the last Page
  void skipPage() {
    // Implementation for skipping to the last page
  }
}
