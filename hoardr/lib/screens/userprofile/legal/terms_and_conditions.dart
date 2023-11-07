import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/settings_panel.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});
     
  
  @override 
  Widget build(BuildContext context) {
    return PageScaffold(
        title: 'Terms & conditions',
        child: ListView.builder(
        itemCount: terms.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              terms[index],
              style: TextStyle(fontSize: 16),
            ),
          );
        },
      ),
      );
  }
}

