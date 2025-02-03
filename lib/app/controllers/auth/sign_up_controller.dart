import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool eyeHidden = true.obs;

  TextEditingController fullname = TextEditingController();
  Rx<FocusNode> fullnameFocus = FocusNode().obs;
  TextEditingController emailController = TextEditingController();
  Rx<FocusNode> emailFocus = FocusNode().obs;
  TextEditingController passwordController = TextEditingController();
  Rx<FocusNode> passwordFocus = FocusNode().obs;

  void unFocus() {
    emailFocus.value.unfocus();
    passwordFocus.value.unfocus();
    fullnameFocus.value.unfocus();
  }

  void toggleEye() {
    eyeHidden.value = !(eyeHidden.value);
  }
}
