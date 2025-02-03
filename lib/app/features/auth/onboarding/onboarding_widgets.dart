part of "imports.dart";

class __LoginButton extends StatelessWidget {
  const __LoginButton();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: context.elevatedButtonStyle,
        onPressed: () {
          Get.toNamed(AppRoutes.signIn);
        },
        child: Center(
          child: Text(
            "Login",
            style: context.elevatedButton,
          ),
        ),
      ),
    );
  }
}

class __RegisterButton extends StatelessWidget {
  const __RegisterButton();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: context.elevatedButtonStyle,
        onPressed: () {
          // context.go(AppRoutePaths.signUp);
        },
        child: Center(
          child: Text(
            "Register",
            style: context.elevatedButton,
          ),
        ),
      ),
    );
  }
}

class __Title extends StatelessWidget {
  const __Title();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Elevate Your English Skills",
      style: context.headline,
      textAlign: TextAlign.center,
    );
  }
}

class __Description extends StatelessWidget {
  const __Description();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Expand your vocabulary, test your skills, and master English with fun quizzes and engaging stories!",
      style: context.body,
      textAlign: TextAlign.center,
    );
  }
}
