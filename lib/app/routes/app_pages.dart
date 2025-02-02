import 'package:get/get.dart';
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
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),
  ];
}
