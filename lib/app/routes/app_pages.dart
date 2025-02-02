import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/features/screens/splash/splash_page.dart';

import '../bindings/todo_binding.dart';
import '../features/screens/offline/imports.dart';
import '../pages/todo/todo_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.todo,
      page: () => const TodoPage(),
      binding: TodoBinding(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => Container(color: Colors.red),
    ),
  ];
}
