part of "imports.dart";

class __GoBack extends StatelessWidget {
  const __GoBack();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Image.asset(IconConstants.back, height: 20),
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
          "Forgot Your Password?",
          style: context.display,
        ),
        Text(
          "No worries! Enter your email address, and we'll send you a verification code. Use the code to reset your password and regain access to your account",
          style: context.body,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class __Field extends StatelessWidget {
  const __Field();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ForgotPasswordController>();
    return TextField(
      controller: controller.emailController,
      focusNode: controller.emailFocus.value,
      onTapOutside: (_) {
        controller.unFocus();
      },
      style: context.body,
      autocorrect: false,
      decoration: InputDecoration(
        filled: true,
        hintText: "Email",
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
      onPressed: () {},
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
                  color: context.textPrimary,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.textSecondary,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.textSecondary,
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
