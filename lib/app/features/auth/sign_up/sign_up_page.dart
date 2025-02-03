part of "imports.dart";

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
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
                    SizedBox(height: 5),
                    _Privacy(),
                    SizedBox(height: 25),
                    _SignUpButton(),
                    SizedBox(height: 10),
                    _GoSignIn(),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
          Obx(() => LoadingPage(Get.find<SignUpController>().isLoading.value)),
        ],
      ),
    );
  }
}
