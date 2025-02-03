import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/sign_in_request_model.dart';
import 'package:wordly_project/app/data/repositories/auth_repository_iml.dart';
import 'package:wordly_project/utils/helpers/validation_helper.dart';

import '../../../utils/services/social_auth_service.dart';

class SignInController extends GetxController {
  // Observables
  RxBool isLoading = false.obs;
  RxBool eyeHidden = false.obs;

  TextEditingController emailController = TextEditingController();
  Rx<FocusNode> emailFocus = FocusNode().obs;
  TextEditingController passwordController = TextEditingController();
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
    if (ValidationHelper.isValidEmail(email)) {
      Get.showSnackbar(
        GetSnackBar(
          title: "Password Too Weak",
          message:
              "Use at least 8 characters with one uppercase letter and one number.",
        ),
      );
    } else if (ValidationHelper.isValidPassword(password)) {
      Get.showSnackbar(GetSnackBar(
        title: "Invalid Email",
        message:
            "The email format is incorrect. Please enter a valid email address.",
      ));
    } else {
      SignInRequestModel model = SignInRequestModel(
        email: email,
        password: password,
      );

      final impl = Get.find<AuthRepositoryImpl>();

      final result = await impl.signInWithEmail(model);

      result.fold(
        (failure) {
          Get.snackbar(
            "Error",
            failure.message ?? "Something went wrong. Please try again.",
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        (user) {
          Get.snackbar(
            "Success",
            "Welcome, ${user.name}!",
            snackPosition: SnackPosition.BOTTOM,
          );

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
        // socialUser.value = user;
      }
    } catch (e) {
      Get.showSnackbar(
        GetSnackBar(
          title: "Error",
          message: e.toString(),
        ),
      );
    } finally {
      isLoading.value = false;
    }
  }
}
