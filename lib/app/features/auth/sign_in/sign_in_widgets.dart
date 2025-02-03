part of "imports.dart";

///
/// TITLE
///
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

///
/// DESCRIPTION
///
class __Description extends StatelessWidget {
  const __Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign in to access your personalized vocabulary journey, continue where you left off, and keep mastering new words every day.",
      style: context.body,
      textAlign: TextAlign.center,
    );
  }
}

///
/// FACEBOOK BUTTON
///
class __Facebook extends StatelessWidget {
  const __Facebook();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: context.elevatedButtonStyle,
      onPressed: () {},
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(IconConstants.facebook, height: 25),
            const SizedBox(width: 5),
            Text(
              "Facebook",
              style: context.elevatedButton,
            ),
          ],
        ),
      ),
    );
  }
}

///
/// GOOGLE BUTTON
///
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

///
/// EMAIL TEXT FIELD
///
/// Now a pure StatelessWidget.
/// We receive the controller and focusNode from outside.
class __Email extends StatelessWidget {
  // final TextEditingController controller;
  // final FocusNode focusNode;

  // const __Email({
  //   // required this.controller,
  //   // required this.focusNode,
  // });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: controller,
      // focusNode: focusNode,
      // onTapOutside: (_) => focusNode.unfocus(),
      textInputAction: TextInputAction.next,
      autocorrect: false,
      decoration: InputDecoration(
        filled: true,
        // fillColor: _Colors.lightBlue,
        hintText: "Email",
        contentPadding: const EdgeInsets.only(
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

class __Password extends StatelessWidget {
  const __Password();

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: controller,
      // focusNode: focusNode,
      autocorrect: false,
      // onTapOutside: (_) => focusNode.unfocus(),
      // obscureText: hideEye,
      decoration: InputDecoration(
        filled: true,
        // fillColor: _Colors.lightBlue,
        hintText: "Password",
        suffixIcon: CupertinoButton(
          padding: EdgeInsets.zero,
          // onPressed: onToggleEye,
          onPressed: () {},
          child: Icon(
            CupertinoIcons.eye_fill,
            size: 26,
          ),
        ),
        contentPadding: const EdgeInsets.only(
          left: 25,
          right: 25,
          top: 15,
          bottom: 15,
        ),
        hintStyle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
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
  }
}
