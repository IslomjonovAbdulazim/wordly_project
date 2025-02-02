part of 'imports.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstants.welcomeBackground),
              ),
            ),
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
