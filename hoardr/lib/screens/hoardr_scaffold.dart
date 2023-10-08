import 'package:flutter/material.dart';
import 'package:hoardr/widgets/hoardr_bottom_navigation.dart';

class HoardrScaffold extends StatelessWidget {
  const HoardrScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: child, bottomNavigationBar: HoardrBottomNavigation());
  }
}
