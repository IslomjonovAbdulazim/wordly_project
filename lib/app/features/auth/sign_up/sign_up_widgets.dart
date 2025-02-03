part of "imports.dart";

class __Title extends StatelessWidget {
  const __Title();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Join Us Today!",
      style: context.display,
      textAlign: TextAlign.center,
    );
  }
}

class __Description extends StatelessWidget {
  const __Description();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Create your account to start building your vocabulary, exploring engaging stories, and achieving your English learning goals.",
      style: context.body,
      textAlign: TextAlign.center,
    );
  }
}

class __Google extends StatelessWidget {
  const __Google();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpController>();
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
            SizedBox(width: 5),
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

class __Fullname extends StatelessWidget {
  const __Fullname();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpController>();
    return Obx(() {
      return TextField(
        controller: controller.fullnameController,
        focusNode: controller.fullnameFocus.value,
        onTapOutside: (_) {
          controller.unFocus();
        },
        onSubmitted: (_) {
          FocusScope.of(context).requestFocus(controller.emailFocus.value);
        },
        autocorrect: false,
        textInputAction: TextInputAction.next,
        style: context.body,
        decoration: InputDecoration(
          filled: true,
          hintText: "Fullname",
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
    });
  }
}

class __Email extends StatelessWidget {
  const __Email();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpController>();
    return Obx(() {
      return TextField(
        controller: controller.emailController,
        focusNode: controller.emailFocus.value,
        autocorrect: false,
        onTapOutside: (_) {
          controller.unFocus();
        },
        onSubmitted: (_) {
          FocusScope.of(context).requestFocus(controller.passwordFocus.value);
        },
        textInputAction: TextInputAction.next,
        style: context.body,
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
    });
  }
}

class __Password extends StatelessWidget {
  const __Password();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpController>();
    return Obx(() {
      return TextField(
        controller: controller.passwordController,
        focusNode: controller.passwordFocus.value,
        onTapOutside: (_) {
          controller.unFocus();
        },
        onSubmitted: (_) {
          controller.unFocus();
        },
        autocorrect: false,
        obscureText: controller.eyeHidden.value,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          filled: true,
          hintText: "Password",
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
    });
  }
}
