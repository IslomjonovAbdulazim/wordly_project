part of "imports.dart";

class __Title extends StatelessWidget {
  const __Title();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome Back!",
      style: context.display,
    );
  }
}

class __Description extends StatelessWidget {
  const __Description();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign in to access your personalized vocabulary journey, continue where you left off, and keep mastering new words every day.",
      style: context.body,
      textAlign: TextAlign.center,
    );
  }
}

class __Google extends StatelessWidget {
  const __Google();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignInController>();
    return ElevatedButton(
      style: context.elevatedButtonStyle,
      onPressed: () {
        controller.loginWithGoogle();
      },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(IconConstants.google, height: 25),
            const SizedBox(width: 5),
            Text(
              "Google",
              style: context.elevatedButton,
            ),
          ],
        ),
      ),
    );
  }
}

class __Email extends StatelessWidget {
  const __Email();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignInController>();
    return Obx(() {
      return TextField(
        controller: controller.emailController,
        focusNode: controller.emailFocus.value,
        onTapOutside: (_) => controller.unFocus(),
        textInputAction: TextInputAction.next,
        autocorrect: false,
        style: context.body,
        decoration: InputDecoration(
          filled: true,
          hintText: "Email",
          hintStyle: context.body,
          contentPadding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 15,
            bottom: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      );
    });
  }
}

class __Password extends StatelessWidget {
  const __Password();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignInController>();
    return Obx(() {
      return TextField(
        controller: controller.passwordController,
        focusNode: controller.passwordFocus.value,
        onTapOutside: (_) => controller.unFocus(),
        autocorrect: false,
        obscureText: controller.eyeHidden.value,
        style: context.body,
        decoration: InputDecoration(
          filled: true,
          hintText: "Password",
          hintStyle: context.body,
          suffixIcon: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: controller.toggleEye,
            child: Icon(
              controller.eyeHidden.value
                  ? CupertinoIcons.eye_slash_fill
                  : CupertinoIcons.eye_fill,
              size: 26,
            ),
          ),
          contentPadding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 15,
            bottom: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      );
    });
  }
}
