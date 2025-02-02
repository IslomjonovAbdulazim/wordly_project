part of 'imports.dart';

class _Texts extends StatelessWidget {
  const _Texts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        __Title(),
        SizedBox(height: 20),
        __Description(),
      ],
    );
  }
}


class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        __LoginButton(),
        SizedBox(width: 20),
        __RegisterButton(),
      ],
    );
  }
}
