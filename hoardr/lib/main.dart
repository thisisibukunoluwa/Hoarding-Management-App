import 'package:flutter/material.dart';

void main() {
  runApp(const HoardrApp());
}

class HoardrApp extends StatelessWidget {
  const HoardrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      
    );
  }
}


