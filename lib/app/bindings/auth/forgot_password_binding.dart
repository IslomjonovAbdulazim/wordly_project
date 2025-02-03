import 'package:get/get.dart';
import 'package:wordly_project/app/controllers/auth/confirm_otp_controller.dart';

import '../../controllers/auth/forgot_password_controller.dart';
import 'confirm_otp_binding.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
  }
}
