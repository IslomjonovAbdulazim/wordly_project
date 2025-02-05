import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/change_password_request_model.dart';
import 'package:wordly_project/app/routes/app_routes.dart';
import 'package:wordly_project/utils/helpers/logger.dart';
import 'package:wordly_project/utils/helpers/status_code_helper.dart';
import 'package:wordly_project/utils/helpers/validation_helper.dart';

import '../../../domain/repositories/auth_respository.dart';

class ResetPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool hideEyePassword = true.obs;
  RxBool hideEyeConfirmPassword = true.obs;
  String email = "";

  TextEditingController passwordController = TextEditingController(
    text: "ChangesPass*1",
  );
  Rx<FocusNode> passwordFocus = FocusNode().obs;
  TextEditingController confirmPasswordController = TextEditingController(
    text: "ChangesPass*2",
  );
  Rx<FocusNode> confirmPasswordFocus = FocusNode().obs;

  void toggleEyePassword() {
    hideEyePassword.value = !(hideEyePassword.value);
  }

  void toggleEyePasswordConfirm() {
    hideEyeConfirmPassword.value = !(hideEyeConfirmPassword.value);
  }

  void unFocus() {
    passwordFocus.value.unfocus();
    confirmPasswordFocus.value.unfocus();
  }

  Future<void> save() async {
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    // if (email.isEmpty) {
    //   Get.closeAllSnackbars();
    //   Get.snackbar(
    //     "System Problem",
    //     "The passwords do not match. Please re-enter them correctly.",
    //   );
    // }
    if (password != confirmPassword) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Password Mismatch",
        "The passwords do not match. Please re-enter them correctly.",
      );
    }
    else if (ValidationHelper.isValidPassword(password) == false) {
      Get.closeAllSnackbars();
      Get.snackbar(
        "Password Too Weak",
        "Password must be at least 8 characters long and include at least one uppercase letter and one number.",
      );
    } else {
      Logger.log(email);
      ChangePasswordRequestModel model = ChangePasswordRequestModel(
        email: email,
        password: password,
      );
      isLoading.value = true;
      final api = Get.find<AuthRepository>();
      final result = await api.changePassword(model);
      isLoading.value = false;

      result.fold(
        (failure) {
          StatusCodeService.showSnackbar(failure.statusCode ?? 505);
        },
        (user) {
          Get.offAllNamed(AppRoutes.signIn);
        },
      );
    }
  }
}
