import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const LoadingPage({
    super.key,
    required this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        isLoading
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: .3),
                ),
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              )
            : SizedBox.shrink(),
        child,
      ],
    );
  }
}
