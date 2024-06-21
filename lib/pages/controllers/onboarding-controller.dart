import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  // Declare your variables here

  /// Update Current Index when Page Scroll
  void updatePageIndicator(int index) {
    // Implementation for updating the page indicator
  }

  /// Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    // Implementation for jumping to the specific dot
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    // Implementation for jumping to the next page
  }

  /// Update Current Index & jump to the last Page
  void skipPage() {
    // Implementation for skipping to the last page
  }
}
