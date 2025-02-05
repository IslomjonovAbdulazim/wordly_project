import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../domain/repositories/auth_respository.dart';
import '../../../utils/helpers/logger.dart';
import '../../../utils/helpers/status_code_helper.dart';
import '../../data/models/auth/confirm_otp_request_model.dart';
import '../../routes/app_routes.dart';

class VerifyEmailController extends GetxController {
  RxBool isLoading = false.obs;
  RxString email = "".obs;
  TextEditingController pinController = TextEditingController();
  Rx<FocusNode> pinFocus = FocusNode().obs;

  void setEmail(String val) {
    Logger.log(val);
    email.value = val;
  }

  void unFocus() {
    pinFocus.value.unfocus();
  }

  Future<void> next() async {
    final otp = pinController.text.trim();
    if (otp.length != 5) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Invalid Input",
        "The provided input is incorrect. Please check and try again.",
      );
      Logger.log("otp: $otp");
    } else {
      isLoading.value = true;
      ConfirmOtpRequestModel model = ConfirmOtpRequestModel(
        email: email.value,
        code: int.parse(otp),
      );
      Logger.log(model.toString());
      final api = Get.find<AuthRepository>();

      final result = await api.confirmOtp(model);

      isLoading.value = false;

      result.fold(
        (failure) {
          Get.closeAllSnackbars();
          Get.closeAllSnackbars();
          StatusCodeService.showSnackbar(failure.statusCode ?? 404);
        },
        (response) {
          if (response.status == 200) {
            Get.toNamed(AppRoutes.signIn);
          } else {
            Get.closeAllSnackbars();
            Get.snackbar("Incorrect Code", "------------------");
          }
        },
      );
    }
  }
}
