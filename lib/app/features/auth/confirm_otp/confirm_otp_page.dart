part of "imports.dart";

class ConfirmOTPPage extends StatelessWidget {
  const ConfirmOTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              __OTPField(onCompleted: (a) {}),
              SizedBox(height: 15),
              __Button(),
              __StepTracker(),
            ],
          ),
        ),
      ),
    );
  }
}
