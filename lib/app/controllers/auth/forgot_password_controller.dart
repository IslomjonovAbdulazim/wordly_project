import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/controllers/auth/confirm_otp_controller.dart';
import 'package:wordly_project/app/data/models/auth/forgot_password_request_model.dart';
import 'package:wordly_project/app/routes/app_routes.dart';
import 'package:wordly_project/utils/helpers/logger.dart';
import 'package:wordly_project/utils/helpers/validation_helper.dart';

import '../../../domain/repositories/auth_respository.dart';

String EMAIL = "";
class ForgotPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailController = TextEditingController(
    text: "islomjonov.abdulazim.27@gmail.com",
  );
  Rx<FocusNode> emailFocus = FocusNode().obs;

  void unFocus() {
    emailFocus.value.unfocus();
  }

  Future<void> next() async {
    final email = emailController.text.trim();

    if (ValidationHelper.isValidEmail(email) == false) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Invalid Email",
        "The email format is incorrect. Please enter a valid email address.",
      );
    } else {
      isLoading.value = true;

      ForgotPasswordRequestModel request =
          ForgotPasswordRequestModel(email: email, );
      final api = Get.find<AuthRepository>();

      final result = await api.forgotPassword(request);
      Logger.log("email222222: $email");
      EMAIL = email;
      isLoading.value = false;
      Get.find<ConfirmOtpController>().setEmail(email);

      result.fold(
        (failure) async {
          Get.closeAllSnackbars();
          Get.snackbar("Error",
              failure.message ?? "Something went wrong. Please try again.");
        },
        (user) async {
          Get.closeAllSnackbars();
          Get.toNamed(AppRoutes.confirmOTP);
        },
      );
    }
  }
}
