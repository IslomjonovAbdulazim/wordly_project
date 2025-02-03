part of "imports.dart";

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  __GoBack(),
                  SizedBox(height: 20),
                  __Texts(),
                  SizedBox(height: 30),
                  __Field(),
                  SizedBox(height: 15),
                  __Button(),
                  __StepTracker(),
                ],
              ),
            ),
          ),
          Obx(
            () => LoadingPage(
              Get.find<ForgotPasswordController>().isLoading.value,
            ),
          ),
        ],
      ),
    );
  }
}
