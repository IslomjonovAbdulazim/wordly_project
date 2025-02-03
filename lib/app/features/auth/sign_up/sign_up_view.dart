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
        __Fullname(),
        SizedBox(height: 10),
        __Email(),
        SizedBox(height: 10),
        __Password(),
      ],
    );
  }
}

class _Privacy extends StatelessWidget {
  const _Privacy();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpController>();
    return Row(
      children: [
        Transform.scale(
          scale: 1.6,
          child: Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            side: BorderSide.none,
            onChanged: controller.toggleAgreement,
            value: controller.isAgree.value,
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                "I'm agree to the",
                style: context.caption,
              ),
              SizedBox(width: 5),
              Text(
                "Terms of Service",
                style: context.code,
              ),
              SizedBox(width: 5),
              Text(
                "and",
                style: context.caption,
              ),
              SizedBox(width: 5),
              Text(
                "Privacy Policy",
                style: context.code,
              ),
            ],
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
    return ElevatedButton(
      style: context.elevatedButtonStyle,
      onPressed: () {},
      child: Center(
        child: Text(
          "Create Account",
          style: context.elevatedButton,
        ),
      ),
    );
  }
}

class _GoSignIn extends StatelessWidget {
  const _GoSignIn();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(
            "Do you have account?",
            style: context.body,
          ),
          SizedBox(width: 5),
          InkWell(
            borderRadius: BorderRadius.circular(3),
            onTap: () {
              Get.toNamed(AppRoutes.signIn);
            },
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Text(
                "Sign in",
                style: context.subtitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
