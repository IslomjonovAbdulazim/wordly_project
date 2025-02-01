// lib/app/routes/app_pages.dart
import 'package:get/get.dart';
import '../bindings/todo_binding.dart';
import '../pages/todo/todo_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.todo,
      page: () => const TodoPage(),
      binding: TodoBinding(),
    ),
  ];
}
