import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

import '../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // variable
  final PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the Specific dot selected page
  void dotNavigation(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const LoginScreen());
    } else {
      int page = currentPageIndex.value++;
      pageController.jumpToPage(page);
    }
  }

  // Update Current index and jump to Last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
