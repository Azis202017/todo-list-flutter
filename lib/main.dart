import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_app/app/shared/themes.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: theme,
    ),
  );
}
