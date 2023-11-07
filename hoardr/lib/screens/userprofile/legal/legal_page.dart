import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/settings_panel.dart';

class LegalPage extends StatelessWidget {
  const LegalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
        title: 'Security settings',
        child: Center(
          child: Column(
            children: [
              SettingsPanel(
                title: "Terms and Conditions",
                subtitle: "Edit your profile",
                onPressed: () => context.go(''),
                isToggleButton: true,
              ),
              SettingsPanel(
                title: "FAQ's",
                subtitle: '',
                onPressed: () => context.go(''),
                isArrow: false,
              ),
            ],
          ),
        ));
  }
}
