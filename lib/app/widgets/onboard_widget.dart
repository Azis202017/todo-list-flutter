import 'package:flutter/material.dart';
import 'package:todo_app/app/shared/fonts.dart';
import 'package:todo_app/app/widgets/indicator_widget.dart';

class OnBoardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final PageController indicatorController;
  final void Function()? skipButtonPressed;
  const OnBoardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.indicatorController,
    this.skipButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       
          Center(
            child: Image.asset(
              'assets/images/$image.png',
              width: 213,
              height: 277.78,
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: Indicator(
              controller: indicatorController,
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: Text(
              title,
              style: onBoardTitle,
            ),
          ),
          const SizedBox(height: 42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              description,
              style: onBoardSubtitle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
