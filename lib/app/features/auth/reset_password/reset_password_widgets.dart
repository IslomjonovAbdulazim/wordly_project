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
        obscureText: hideEye,
        decoration: InputDecoration(
          filled: true,
          fillColor: _Colors.lightBlue,
          hintText: "Password",
          suffixIcon: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: ref.read(_hideEyeProvider.notifier).change,
            child: Icon(
              hideEye ? CupertinoIcons.eye_slash_fill : CupertinoIcons.eye_fill,
              color: _Colors.darkBlue,
              size: 26,
            ),
          ),
          contentPadding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 15,
            bottom: 15,
          ),
          hintStyle: GoogleFonts.quicksand(
            color: _Colors.grey,
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: _Colors.darkBlue,
            ),
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
    return TextField(
      controller: controller,
      focusNode: focusNode,
      onTapOutside: (_) {
        focusNode.unfocus();
      },
      autocorrect: false,
      obscureText: hideEye,
      decoration: InputDecoration(
        filled: true,
        hintText: "Confirm Password",
        suffixIcon: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: ref.read(_confirmHideEyeProvider.notifier).change,
          child: Icon(
            hideEye ? CupertinoIcons.eye_slash_fill : CupertinoIcons.eye_fill,
            color: _Colors.darkBlue,
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
        // context.go(AppRoutePaths.confirmOTP);
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
