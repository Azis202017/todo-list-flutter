import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:todo_app/app/shared/color.dart';
import 'package:todo_app/app/shared/fonts.dart';

import '../../../routes/app_pages.dart';
import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      IconlyLight.arrow_left_circle,
                      color: whiteColor,
                      size: 32,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: Text(
                      'Welcome to UpTodo',
                      style: titleText,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    'Please login to your account or create new account to continue',
                    style: descriptionText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                      child: Text(
                        'LOGIN',
                        style: buttonText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: primaryColor, width: 1),
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.REGISTER);

                      },
                      child: Text(
                        'REGISTER',
                        style: buttonText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
