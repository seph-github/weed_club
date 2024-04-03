import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Widget child;

  const PageLayout({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0),
        child: child,
      ),
    );
  }
}
