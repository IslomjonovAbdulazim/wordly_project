// lib/main_binding.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'utils/services/connectivity_service.dart';
import 'utils/services/theme_service.dart';
import 'utils/services/token_service.dart';
import 'utils/themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await GetStorage.init();
  Get.put(ThemeController());
  await Get.putAsync(() => ConnectivityService().init());
  await Get.putAsync(() => TokenService().init());
  TokenService.to.clearToken();
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
        initialRoute: AppRoutes.splash,
        getPages: AppPages.pages,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
            boldText: false,
          ),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior(),
            child: child ?? const Scaffold(),
          ),
        ),
      );
    });
  }
}
