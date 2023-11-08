import 'package:flutter/material.dart';
import 'package:hoardr/theme/colors.dart';



class PageScaffold extends StatelessWidget {
  const PageScaffold({super.key, required this.child, required this.title});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.primary),
        body:Center(child:  child,) 
    );
  }
}
