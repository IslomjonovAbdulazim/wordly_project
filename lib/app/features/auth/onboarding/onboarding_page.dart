part of 'imports.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            ImageConstants.welcomeBackground,
            color: Colors.transparent,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(),
                Image.asset(ImageConstants.welcomeImage),
                Spacer(),
                _Texts(),
                Spacer(),
                _Buttons(),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
