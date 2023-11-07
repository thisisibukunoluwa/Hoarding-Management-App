import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/router.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/settings_panel.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Profile settings',
        child: Center(
      child: Column(
        children: [
          SettingsPanel(
              title: "Full ",
              subtitle: "Edit your profile",
              onPressed: () => context.go('')
            ),
          SettingsPanel(
            title: "Notification settings",
            subtitle: "Activate your notifications",
            onPressed: () => context.go('notification-settings'),
            isToggleButton: true,
            isArrow: false,
          ),
          SettingsPanel(
              title: "Security Settings",
              subtitle: "Protect yourself from intruders",
              onPressed: () => context.go('profile-settings')),
          SettingsPanel(
              title: "Legal",
              subtitle: "About our contract with you",
              onPressed: () => context.go('profile-settings')),
          SettingsPanel(
              title: "Help",
              subtitle: "Get in touch us without any problems",
              onPressed: () => context.go('profile-settings')),
        ],
      ),
    ));
  }
}
