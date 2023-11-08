import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/router.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/theme/font_weight.dart';
import 'package:hoardr/utils/size_config.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/settings_panel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: PageScaffold(
          title: "Profile",
          child: Padding(
            padding: EdgeInsets.only(),
            child: Center(
              child: Column(
                children: [
                  Stack(children: [
                    CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/18125652/pexels-photo-18125652/free-photo-of-brunette-woman-posing-in-black-strap-dress.jpeg?auto=compress&cs=tinysrgb&w=800")),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                          ),
                        ))
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dasilva Marcus',
                    style: TextStyle(fontWeight: AppFontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lagos, Nigeria',
                        style: TextStyle(fontWeight: AppFontWeight.light),
                      ),
                      Icon(Icons.check_circle)
                    ],
                  ),
                  SettingsPanel(
                      title: "Profile settings",
                      subtitle: "Edit your profile",
                      onPressed: () => context.go(ProfileScreenPath.profileSettings)),
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
                      onPressed: () => context.go(ProfileScreenPath.securitySettings)),
                  SettingsPanel(
                      title: "Legal",
                      subtitle: "About our contract with you",
                      onPressed: () => context.go('profile-settings')),
                  SettingsPanel(
                      title: "Help",
                      subtitle: "Get in touch us without any problems",
                      onPressed: () => context.go('profile-settings')),
                  Text(
                    "Signout",
                    style: TextStyle(fontWeight: AppFontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
