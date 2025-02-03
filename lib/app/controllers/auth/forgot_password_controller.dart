import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  Rx<FocusNode> emailFocus = FocusNode().obs;

  void unFocus() {
    emailFocus.value.unfocus();
  }
}
