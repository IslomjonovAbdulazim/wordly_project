// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wordly_project/utils/constants/color_constants.dart';
import 'package:wordly_project/utils/themes/app_theme.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'utils/services/connectivity_service.dart';
import 'utils/services/theme_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(ThemeController());
  await Get.putAsync(() => ConnectivityService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();
    return Obx(() {
      return GetMaterialApp(
        title: 'Wordly App',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeController.themeMode,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.offline,
        getPages: AppPages.pages,
      );
    });
  }
}
