import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/forgot_password_request_model.dart';
import 'package:wordly_project/utils/helpers/validation_helper.dart';

import '../../../domain/repositories/auth_respository.dart';

class ForgotPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  Rx<FocusNode> emailFocus = FocusNode().obs;

  void unFocus() {
    emailFocus.value.unfocus();
  }

  Future<void> next() async {
    final email = emailController.text.trim();

    if (ValidationHelper.isValidEmail(email)) {
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

      isLoading.value = false;

      result.fold(
        (failure) {
          Get.closeAllSnackbars();
          Get.snackbar("Error",
              failure.message ?? "Something went wrong. Please try again.");
        },
        (user) {
          Get.closeAllSnackbars();
          Get.snackbar("Success", "Welcome, ${user.name}!");
          Get.offAllNamed('/home');
        },
      );
    }
  }
}
