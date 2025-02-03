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
        Expanded(child: __Facebook()),
        SizedBox(width: 10),
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
            style: GoogleFonts.quicksand(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: _Colors.darkGrey,
            ),
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

class _Privacy extends ConsumerWidget {
  const _Privacy();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool val = ref.watch(_checkboxProvider);
    return Row(
      children: [
        Transform.scale(
          scale: 1.6,
          child: Checkbox(
            checkColor: _Colors.blue,
            activeColor: _Colors.blue,
            focusColor: _Colors.blue,
            fillColor: WidgetStateProperty.all(_Colors.lightBlue),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            hoverColor: _Colors.blue,
            side: BorderSide.none,
            onChanged: (val) {
              if (val != null) {
                ref.read(_checkboxProvider.notifier).change(val);
              }
            },
            value: val,
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
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "Terms of Service",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: _Colors.blue,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "and",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "Privacy Policy",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: _Colors.blue,
                ),
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
      style: ElevatedButton.styleFrom(
        backgroundColor: _Colors.blue,
        overlayColor: _Colors.darkBlue,
        shadowColor: _Colors.lightBlue,
        foregroundColor: _Colors.lightBlue,
        surfaceTintColor: _Colors.lightBlue,
        elevation: 0,
        fixedSize: Size.fromHeight(55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {},
      child: Center(
        child: Text(
          "Create Account",
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: _Colors.white,
            fontWeight: FontWeight.w600,
          ),
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
            style: GoogleFonts.montserrat(),
          ),
          SizedBox(width: 5),
          InkWell(
            borderRadius: BorderRadius.circular(3),
            onTap: () {
              context.go(AppRoutePaths.signIn);
            },
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Text(
                "Sign in",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: _Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
