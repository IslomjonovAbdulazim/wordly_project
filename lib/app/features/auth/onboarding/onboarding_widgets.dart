part of "imports.dart";

class __LoginButton extends StatelessWidget {
  const __LoginButton();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstants.blue,
          fixedSize: Size.fromHeight(55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          Get.to(AppRoutes.signIn);
        },
        child: Center(
          child: Text(
            "Login",
            style: GoogleFonts.montserrat(
              color: ColorConstants.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
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
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstants.white,
          fixedSize: Size.fromHeight(55),
          elevation: 0,
          surfaceTintColor: ColorConstants.white,
          overlayColor: ColorConstants.white,
          shadowColor: ColorConstants.white,
          foregroundColor: ColorConstants.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          // context.go(AppRoutePaths.signUp);
        },
        child: Center(
          child: Text(
            "Register",
            style: GoogleFonts.montserrat(
              color: ColorConstants.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
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
      style: GoogleFonts.montserrat(
        color: ColorConstants.blue,
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
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
      style: GoogleFonts.quicksand(
        color: ColorConstants.black,
        fontSize: 14,
        height: 1.14,
      ),
      textAlign: TextAlign.center,
    );
  }
}
