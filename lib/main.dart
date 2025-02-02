// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'utils/services/connectivity_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(() => ConnectivityService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Wordly App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.offline,
      getPages: AppPages.pages,
    );
  }
}
