import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/sign_in_request_model.dart';
import 'package:wordly_project/domain/repositories/auth_respository.dart';
import 'package:wordly_project/utils/helpers/validation_helper.dart';

import '../../../utils/services/social_auth_service.dart';

class SignInController extends GetxController {
  // Observables
  RxBool isLoading = false.obs;
  RxBool eyeHidden = true.obs;

  TextEditingController emailController =
      TextEditingController(text: "azim@gmail.com");
  Rx<FocusNode> emailFocus = FocusNode().obs;
  TextEditingController passwordController =
      TextEditingController(text: "Azim0270");
  Rx<FocusNode> passwordFocus = FocusNode().obs;

  void unFocus() {
    emailFocus.value.unfocus();
    passwordFocus.value.unfocus();
  }

  void toggleEye() {
    eyeHidden.value = !(eyeHidden.value);
  }

  Future<void> loginWithEmail() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if (ValidationHelper.isValidEmail(email) == false) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Invalid Email",
        "The email format is incorrect. Please enter a valid email address.",
      );
    } else if (ValidationHelper.isValidPassword(password) == false) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Password Too Weak",
        "Use at least 8 characters with one uppercase letter and one number.",
      );
    } else {
      // Prevent opening multiple dialogs
      if (isLoading.value) return;

      isLoading.value = true;
      Get.closeAllSnackbars();
      Get.dialog(
        const Center(child: CircularProgressIndicator.adaptive()),
        barrierDismissible: false,
      );

      SignInRequestModel model = SignInRequestModel(email: email, password: password);
      final impl = Get.find<AuthRepository>();

      final result = await impl.signInWithEmail(model);

      if (Get.isDialogOpen == true) {
        Get.back(); // Close the loading dialog
      }

      isLoading.value = false;

      result.fold(
            (failure) {
          Get.snackbar("Error", failure.message ?? "Something went wrong. Please try again.");
        },
            (user) {
          Get.snackbar("Success", "Welcome, ${user.name}!");
          Get.offAllNamed('/home');
        },
      );
    }
  }

  Future<void> loginWithGoogle() async {
    try {
      isLoading.value = true;
      final user = await SocialAuthService.signInWithGoogle();
      if (user != null) {
        Get.closeAllSnackbars();
        Get.snackbar(
          "Success",
          user.toString(),
        );
        // socialUser.value = user;
      }
    } catch (e) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Error",
        e.toString(),
      );
    } finally {
      isLoading.value = false;
    }
  }
}
