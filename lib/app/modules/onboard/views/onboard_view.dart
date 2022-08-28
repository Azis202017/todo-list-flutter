import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_app/app/shared/fonts.dart';
import 'package:todo_app/app/widgets/onboard_widget.dart';

import '../../../shared/color.dart';
import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          onPageChanged: controller.onPageChanged,
          controller: controller.pageController,
          children: [
            OnBoardWidget(
              image: 'onboard1',
              title: 'Manage your tasks',
              indicatorController: controller.pageController,
              description:
                  'You can easily manage all of your daily tasks in DoMe for free',
              skipButtonPressed: controller.skipButtonPressed,
            ),
            OnBoardWidget(
              image: 'onboard2',
              title: 'Create daily routine',
              indicatorController: controller.pageController,
              skipButtonPressed: controller.skipButtonPressed,
              description:
                  'You can easily manage all of your daily tasks in DoMe for free',
            ),
            OnBoardWidget(
              image: 'onboard3',
              title: 'Orgonaize your tasks',
              skipButtonPressed: controller.skipButtonPressed,
              description:
                  'You can easily manage all of your daily tasks in DoMe for free',
              indicatorController: controller.pageController,
            ),
          ],
        ),
        bottomSheet: Container(
          color: bgColor,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Obx(
            () {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: bgColor,
                    ),
                    onPressed: controller.skipButtonPressed,
                    child: Text(
                      'SKIP',
                      style: buttonText,
                    ),
                  ),
                  TextButton(
                    onPressed: controller.isLastPage.value
                        ? controller.toGetStartedPage
                        : controller.toNextPage,
                    child: Text(
                      controller.isLastPage.value ? 'GET STARTED' : 'NEXT',
                      style: buttonText,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
