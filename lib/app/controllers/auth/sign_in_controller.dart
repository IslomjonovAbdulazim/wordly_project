import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/sign_in_request_model.dart';
import 'package:wordly_project/app/routes/app_routes.dart';
import 'package:wordly_project/domain/repositories/auth_respository.dart';
import 'package:wordly_project/utils/helpers/validation_helper.dart';
import 'package:wordly_project/utils/services/token_service.dart';

import '../../../utils/helpers/status_code_helper.dart';
import '../../../utils/services/social_auth_service.dart';

class SignInController extends GetxController {
  // Observables
  RxBool isLoading = false.obs;
  RxBool eyeHidden = true.obs;

  TextEditingController emailController = TextEditingController(
    text: "islomjonov.abdulazim.27@gmail.com",
  );
  Rx<FocusNode> emailFocus = FocusNode().obs;
  TextEditingController passwordController = TextEditingController(
    text: "Azim0270*",
  );
  Rx<FocusNode> passwordFocus = FocusNode().obs;

  void unFocus() {
    emailFocus.value.unfocus();
    passwordFocus.value.unfocus();
  }

  void toggleEye() {
    eyeHidden.value = !(eyeHidden.value);
  }

  Future<void> loginWithEmail() async {
    if (isLoading.value) return;
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
      isLoading.value = true;
      SignInRequestModel model =
          SignInRequestModel(email: email, password: password);
      final api = Get.find<AuthRepository>();

      final result = await api.signInWithEmail(model);

      isLoading.value = false;

      result.fold(
        (failure) {
          StatusCodeService.showSnackbar(failure.statusCode ?? 505);
        },
        (response) {
          TokenService.to.saveToken(response.access);
          TokenService.to.saveRefreshToken(response.refresh);
          Get.offAllNamed(AppRoutes.main);
        },
      );
    }
  }

  Future<void> loginWithGoogle() async {
    if (isLoading.value) return;
    try {
      isLoading.value = true;
      final user = await SocialAuthService.signInWithGoogle();
      if (user != null) {
        Get.closeAllSnackbars();
        Get.snackbar(
          "Logged In",
          "${user.email}\n${user.name}",
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
