part of "imports.dart";

class _Texts extends StatelessWidget {
  const _Texts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        __Title(),
        SizedBox(height: 5),
        __Description(),
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: __Google()),
      ],
    );
  }
}

class _Or extends StatelessWidget {
  const _Or();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: .5)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Or",
            style: context.caption,
          ),
        ),
        Expanded(child: Divider(thickness: .5)),
      ],
    );
  }
}

class _Fields extends StatelessWidget {
  const _Fields();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        __Email(),
        SizedBox(height: 10),
        __Password(),
      ],
    );
  }
}

class _ForgetPassword extends StatelessWidget {
  const _ForgetPassword();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(3),
          onTap: () {
            // context.go(AppRoutePaths.forgetPassword);
          },
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Text(
              "Forgot Password?",
              style: context.subtitle,
            ),
          ),
        ),
      ],
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignInController>();
    return ElevatedButton(
      style: context.elevatedButtonStyle,
      onPressed: controller.loginWithEmail,
      child: Center(
        child: Text(
          "Log In",
          style: context.elevatedButton,
        ),
      ),
    );
  }
}

class _GoSignUp extends StatelessWidget {
  const _GoSignUp();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(
            "Don't have account?",
            style: context.body,
          ),
          SizedBox(width: 5),
          InkWell(
            borderRadius: BorderRadius.circular(3),
            onTap: () {
              Get.toNamed(AppRoutes.signUp);
            },
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Text(
                "Sign up",
                style: context.subtitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
