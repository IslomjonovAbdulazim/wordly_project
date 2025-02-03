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
    return ElevatedButton(
      style: context.elevatedButtonStyle,
      onPressed: () {},
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
    return TextField(
      // controller: controller,
      // focusNode: focusNode,
      onTapOutside: (_) {
        focusNode.unfocus();
      },
      autocorrect: false,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: _Colors.lightBlue,
        hintText: "Fullname",
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
    );
  }
}

class __Email extends ConsumerWidget {
  const __Email();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller =
        ref.read(_emailProvider.notifier).controller;
    FocusNode focusNode = ref.watch(_emailProvider);
    return TextField(
      controller: controller,
      focusNode: focusNode,
      autocorrect: false,
      onTapOutside: (_) {
        focusNode.unfocus();
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: _Colors.lightBlue,
        hintText: "Email",
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
    );
  }
}

class __Password extends ConsumerWidget {
  const __Password();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller =
        ref.read(_passwordProvider.notifier).controller;
    FocusNode focusNode = ref.watch(_passwordProvider);
    bool hideEye = ref.watch(_hideEyeProvider);
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
        hintText: "Password",
        suffixIcon: CupertinoButton(
          padding: EdgeInsets.zero,
          // onPressed: ref.read(_hideEyeProvider.notifier).change,
          child: Icon(
            hideEye ? CupertinoIcons.eye_slash_fill : CupertinoIcons.eye_fill,
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
