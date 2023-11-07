

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/settings_panel.dart';

class SecuritySettings extends StatelessWidget {
  const SecuritySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Security settings',
        child: Center(
      child: Column(
        children: [
          SettingsPanel(
              title: "Biometrics",
              subtitle: "Edit your profile",
              onPressed: () => context.go('profile-settings'),
              isToggleButton: true,
            ),
          SettingsPanel(
            title: "Change password",
            subtitle: '',
            onPressed: () => context.go(''),
            isArrow: false,
          ),
        ],
      ),
    ));
  }
}