import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/models/hoardr_terms_and_conditions.dart';
import 'package:hoardr/theme/font_weight.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/settings_panel.dart';

class TermsAndConditionsPage extends StatelessWidget {
  final hoardTerms = new HoardrTerm("Sample title", "Sample term");

  TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {

  final List<HoardrTerm> terms = hoardTerms.getTermsList();

    return PageScaffold(
      title: 'Terms & conditions',
      child: ListView.builder(
        itemCount: terms.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(
              terms[index].title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: AppFontWeight.bold
                ),
            ),
            subtitle:  Text(
              terms[index].content,
              style: TextStyle(fontSize: 16),
              ),
            )
          );
        },
      ),
    );
  }
}
