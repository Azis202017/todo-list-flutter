import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Indicator extends StatelessWidget {
  final PageController controller;
  final bool? isLastPage;
  const Indicator({
    Key? key,
    required this.controller,
    this.isLastPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: const WormEffect(
        dotWidth: 26.28,
        dotHeight: 4,
      ),
      onDotClicked: (index) => controller.jumpToPage(index),
    );
  }
}
