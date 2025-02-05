part of "imports.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _Title(),
      ),
      body: SafeArea(
        child: _Themes(),
      ),
    );
  }
}
