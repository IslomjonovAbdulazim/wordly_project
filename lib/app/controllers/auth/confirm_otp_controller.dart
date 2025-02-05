import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/confirm_otp_request_model.dart';
import 'package:wordly_project/app/routes/app_routes.dart';

import '../../../domain/repositories/auth_respository.dart';
import '../../../utils/helpers/status_code_helper.dart';

class ConfirmOtpController extends GetxController {
  RxBool isLoading = false.obs;
  RxString email = "".obs;
  TextEditingController pinController = TextEditingController();
  Rx<FocusNode> pinFocus = FocusNode().obs;

  void setEmail(String val) {
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
    } else {
      isLoading.value = true;
      ConfirmOtpRequestModel model =
          ConfirmOtpRequestModel(email: email.value, code: int.parse(otp));
      final api = Get.find<AuthRepository>();

      final result = await api.verifyOtp(model);

      isLoading.value = false;

      result.fold(
        (failure) {
          StatusCodeService.showSnackbar(failure.statusCode ?? 505);
        },
        (response) {
          if (response.status < 210) {
            Get.toNamed(AppRoutes.resetPassword);
          } else {
            StatusCodeService.showSnackbar(response.status ?? 505);
          }
        },
      );
    }
  }
}
