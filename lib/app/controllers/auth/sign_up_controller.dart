import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/sign_up_request_model.dart';

import '../../../domain/repositories/auth_respository.dart';
import '../../../utils/helpers/validation_helper.dart';
import '../../../utils/services/social_auth_service.dart';

class SignUpController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool eyeHidden = true.obs;
  RxBool isAgree = false.obs;

  TextEditingController fullnameController = TextEditingController(
    text: "Azim",
  );
  Rx<FocusNode> fullnameFocus = FocusNode().obs;
  TextEditingController emailController = TextEditingController(
    text: "azim@gmail.com",
  );
  Rx<FocusNode> emailFocus = FocusNode().obs;
  TextEditingController passwordController = TextEditingController(
    text: "Azim0270",
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
        "Use at least 8 characters with one uppercase letter and one number.",
      );
    } else {
      isLoading.value = true;
      await Future.delayed(Duration(seconds: 2));
      SignUpRequestModel model = SignUpRequestModel(
        email: email,
        password: password,
        name: fullname,
      );
      final impl = Get.find<AuthRepository>();

      final result = await impl.signUpWithEmail(model);

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
