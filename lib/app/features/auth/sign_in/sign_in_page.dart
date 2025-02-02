part of "imports.dart";

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Texts(),
                SizedBox(height: 15),
                _Buttons(),
                SizedBox(height: 10),
                _Or(),
                SizedBox(height: 10),
                _Fields(),
                SizedBox(height: 2),
                _ForgetPassword(),
                SizedBox(height: 15),
                _LoginButton(),
                SizedBox(height: 10),
                _GoSignUp(),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
