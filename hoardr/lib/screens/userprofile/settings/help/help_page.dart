import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/settings_panel.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: "Help",
      child: SettingsPanel(
        title: "For more information",
        subtitle: "Email support@apphoard.com",
        onPressed: () => context.go(''))
    );
  }
}
