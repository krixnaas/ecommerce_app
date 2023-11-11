import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //Variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update current page index
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump to the specific dot selected page
  void dotNaviationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Update current page index and jump to the next page
  void nextPage() {
    print(currentPageIndex.value);
    if (currentPageIndex.value == 2) {
      //Login Screen
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration:
            const Duration(milliseconds: 300), // Adjust the duration as needed
        curve: Curves.easeInOut, // Adjust the animation curve if desired
      );
    }
  }

  //Update Current Page Index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
