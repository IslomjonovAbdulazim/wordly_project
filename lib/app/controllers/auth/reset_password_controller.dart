import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailController = TextEditingController(
    text: "azim@gmail.com",
  );
  Rx<FocusNode> emailFocus = FocusNode().obs;
}
