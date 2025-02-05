part of "imports.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: context.backgroundColor,
        backgroundColor: context.backgroundColor,
        title: _Title(),
      ),
      body: SafeArea(
        child: _Themes(),
      ),
    );
  }
}
