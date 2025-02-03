import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/auth/sign_in_request_model.dart';

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

  Future<void> loginWithEmail() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    SignInRequestModel model = SignInRequestModel(
      email: email,
      password: password,
    );
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

// Future<void> loginWithApple() async {
//   try {
//     isLoading.value = true;
//     final user = await SocialAuthService.signInWithApple();
//     if (user != null) {
//       socialUser.value = user;
//     }
//   } catch (e) {
//     errorMessage.value = e.toString();
//   } finally {
//     isLoading.value = false;
//   }
// }
}
