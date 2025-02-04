import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/confirm_otp_request_model.dart';
import 'package:wordly_project/app/routes/app_routes.dart';
import 'package:wordly_project/utils/helpers/logger.dart';

import '../../../domain/repositories/auth_respository.dart';

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
      isLoading.value = true;
      ConfirmOtpRequestModel model =
          ConfirmOtpRequestModel(email: email.value, code: int.parse(otp));
      final api = Get.find<AuthRepository>();

      final result = await api.confirmOtp(model);

      isLoading.value = false;

      result.fold(
        (failure) {
          Get.closeAllSnackbars();
          Get.snackbar("Error",
              failure.message ?? "Something went wrong. Please try again.");
          Get.toNamed(AppRoutes.resetPassword);
        },
        (user) {
          Get.closeAllSnackbars();
          Get.snackbar("Confirmed", "Welcome, $user!");
          Get.toNamed(AppRoutes.resetPassword);
        },
      );
    }
  }
}
