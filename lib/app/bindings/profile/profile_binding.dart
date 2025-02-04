import 'package:get/get.dart';
import 'package:wordly_project/app/controllers/profile/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
