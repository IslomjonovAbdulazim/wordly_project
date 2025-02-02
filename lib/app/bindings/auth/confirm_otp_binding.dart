import 'package:get/get.dart';
import 'package:wordly_project/app/controllers/auth/confirm_otp_controller.dart';

class ConfirmOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmOtpController>(() => ConfirmOtpController());
  }
}