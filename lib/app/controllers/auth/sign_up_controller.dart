import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/controllers/auth/verify_email_controller.dart';
import 'package:wordly_project/app/data/models/auth/sign_up_request_model.dart';
import 'package:wordly_project/app/routes/app_routes.dart';
import 'package:wordly_project/utils/helpers/status_code_helper.dart';

import '../../../domain/repositories/auth_respository.dart';
import '../../../utils/helpers/validation_helper.dart';
import '../../../utils/services/social_auth_service.dart';

class SignUpController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool eyeHidden = true.obs;
  RxBool isAgree = true.obs;

  TextEditingController fullnameController = TextEditingController(
    text: "Azim",
  );
  Rx<FocusNode> fullnameFocus = FocusNode().obs;
  TextEditingController emailController = TextEditingController(
    text: "islomjonov.abdulazim.27@gmail.com",
  );
  Rx<FocusNode> emailFocus = FocusNode().obs;
  TextEditingController passwordController = TextEditingController(
    text: "Azim0270*",
  );
  Rx<FocusNode> passwordFocus = FocusNode().obs;

  void unFocus() {
    fullnameFocus.value.unfocus();
    emailFocus.value.unfocus();
    passwordFocus.value.unfocus();
  }

  void toggleEye() {
    eyeHidden.value = !(eyeHidden.value);
  }

  void toggleAgreement(bool? val) {
    if (val != null) {
      isAgree.value = val;
    }
  }

  Future<void> signUpWithEmail() async {
    if (isLoading.value) return;
    final fullname = fullnameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (isAgree.value == false) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Agreement Required",
        "You must agree to the Privacy Policy & Terms to continue.",
      );
    } else if (ValidationHelper.isValidEmail(email) == false) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Invalid Email",
        "The email format is incorrect. Please enter a valid email address.",
      );
    } else if (ValidationHelper.isValidPassword(password) == false) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Password Too Weak",
        "Password must be at least 8 characters long and include at least one uppercase letter and one number.",
      );
    } else {
      isLoading.value = true;
      SignUpRequestModel model = SignUpRequestModel(
        email: email,
        password: password,
        fullname: fullname,
      );
      final impl = Get.find<AuthRepository>();

      final result = await impl.signUpWithEmail(model);

      isLoading.value = false;
      Get.find<VerifyEmailController>().email.value = email;

      result.fold(
        (failure) {
          Get.closeAllSnackbars();
          StatusCodeService.showSnackbar(failure.statusCode ?? 500);
        },
        (code) {
          if (code <= 250) {
            Get.toNamed(AppRoutes.verifyEmail);
          } else {
            Get.closeAllSnackbars();
            StatusCodeService.showSnackbar(code);
          }
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
