part of 'imports.dart';

class __GoBack extends StatelessWidget {
  const __GoBack();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Image.asset(
        IconConstants.back,
        height: 20,
        color: context.textPrimary,
      ),
    );
  }
}

class __Texts extends StatelessWidget {
  const __Texts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Reset Your Password",
          style: context.display,
        ),
        Text(
          "Enter your new password below. Make sure it's strong and secure to keep your account safe",
          style: context.body,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class __Password extends StatelessWidget {
  const __Password();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ResetPasswordController>();
    return Obx(
      () => TextField(
        autofocus: true,
        controller: controller.passwordController,
        focusNode: controller.passwordFocus.value,
        onTapOutside: (_) {
          controller.unFocus();
        },
        textInputAction: TextInputAction.next,
        autocorrect: false,
        obscureText: controller.hideEyePassword.value,
        style: context.body,
        decoration: InputDecoration(
          filled: true,
          hintText: "Password",
          suffixIcon: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: controller.toggleEyePassword,
            child: Icon(
              controller.hideEyePassword.value
                  ? CupertinoIcons.eye_slash_fill
                  : CupertinoIcons.eye_fill,
              size: 26,
            ),
          ),
          contentPadding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 15,
            bottom: 15,
          ),
          hintStyle: context.body,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class __Confirmation extends StatelessWidget {
  const __Confirmation();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ResetPasswordController>();
    return Obx(
      () => TextField(
        controller: controller.confirmPasswordController,
        focusNode: controller.confirmPasswordFocus.value,
        onTapOutside: (_) {
          controller.unFocus();
        },
        autocorrect: false,
        obscureText: controller.hideEyeConfirmPassword.value,
        decoration: InputDecoration(
          filled: true,
          hintText: "Confirm Password",
          suffixIcon: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: controller.toggleEyePasswordConfirm,
            child: Icon(
              controller.hideEyeConfirmPassword.value
                  ? CupertinoIcons.eye_slash_fill
                  : CupertinoIcons.eye_fill,
              size: 26,
            ),
          ),
          contentPadding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 15,
            bottom: 15,
          ),
          hintStyle: context.body,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class __Button extends StatelessWidget {
  const __Button();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: context.elevatedButtonStyle,
      onPressed: () {
        Get.find<ResetPasswordController>().save();
      },
      child: Center(
        child: Text(
          "Continue",
          style: context.elevatedButton,
        ),
      ),
    );
  }
}

class __StepTracker extends StatelessWidget {
  const __StepTracker();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
