import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/forgot_password_request_model.dart';
import 'package:wordly_project/app/routes/app_routes.dart';
import 'package:wordly_project/utils/helpers/validation_helper.dart';

import '../../../domain/repositories/auth_respository.dart';

class ForgotPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailController = TextEditingController(
    text: "azim@gmail.com",
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
          ForgotPasswordRequestModel(email: email);
      final api = Get.find<AuthRepository>();
      final result = await api.forgotPassword(request);

      await Future.delayed(Duration(seconds: 1)); // todo delete

      isLoading.value = false;

      result.fold(
        (failure) async {
          Get.closeAllSnackbars();
          Get.snackbar("Error",
              failure.message ?? "Something went wrong. Please try again.");
          Get.toNamed(AppRoutes.confirmOTP); // todo
        },
        (user) async {
          Get.closeAllSnackbars();
          Get.toNamed(AppRoutes.confirmOTP);
        },
      );
    }
  }
}
