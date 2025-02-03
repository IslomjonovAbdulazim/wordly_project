part of "imports.dart";

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              __GoBack(),
              SizedBox(height: 20),
              __Texts(),
              SizedBox(height: 30),
              __Password(),
              SizedBox(height: 15),
              __Confirmation(),
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
