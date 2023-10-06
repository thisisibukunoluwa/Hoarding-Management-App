import 'package:flutter/material.dart';

class HoardrScaffold extends StatelessWidget {
  const HoardrScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: child,bottomNavigationBar:HoardrBottomNavigation(),)
  }
}
