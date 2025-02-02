import 'package:get/get.dart';
import '../../controllers/auth/confirm_otp_controller.dart';

class ConfirmOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmOtpController>(() => ConfirmOtpController());
  }
}
