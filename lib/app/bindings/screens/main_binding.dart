import 'package:get/get.dart';
import 'package:wordly_project/app/controllers/screens/main_controller.dart';

class MainNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainNavController());
  }
}
