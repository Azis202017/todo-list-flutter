import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class OnboardController extends GetxController {
  var pageController = PageController();
  var isLastPage = false.obs;
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int index) {
    isLastPage.value = index == 2;
  }

  void skipButtonPressed() {
    pageController.jumpToPage(2);
  }

  void toPreviousPage() {
    pageController.previousPage(
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  void toGetStartedPage() {
    Get.toNamed(Routes.GET_STARTED);
  }

  void toNextPage() {
    pageController.nextPage(
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }
}
