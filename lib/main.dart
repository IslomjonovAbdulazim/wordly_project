// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Todo App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.todo, // Initial route for the Todo feature.
      getPages: AppPages.pages,      // GetX uses this list for route management.
    );
  }
}
