import 'package:flutter/material.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/theme/font_weight.dart';
import 'package:hoardr/utils/size_config.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: AppColors.primary),
        body: Padding(
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
                  children: [
                    Text(
                      'Lagos, Nigeria',
                      style: TextStyle(fontWeight: AppFontWeight.light),
                    ),
                    Icon(Icons.check_circle)
                  ],
                ),
                Text(
                  "Signout",
                  style: TextStyle(fontWeight: AppFontWeight.bold),
                )
              ],
            ),
          ),
        ));
  }
}

class SettingsPanel extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onPressed;

  const SettingsPanel({
      super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.onPressed,
      });

  @override
  State<SettingsPanel> createState() => _SettingsPanelState();
}

class _SettingsPanelState extends State<SettingsPanel> {
  final bool isArrow = true;

  final bool isToggleButton = false;

  @override
  Widget build(BuildContext context) {
    bool _toggle = false;
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    return Container(
      width: width * 0.9,
      child: Row(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(widget.title, style: Theme.of(context).textTheme.headlineMedium),
            Text(
              widget.subtitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ]),
        if (isArrow) IconButton(
            onPressed: widget.onPressed, 
            icon: Icon(Icons.arrow_forward)
          ),
        if (isToggleButton) Switch.adaptive(
            activeColor: AppColors.primary,
            activeTrackColor:AppColors.lightDark,
            value: _toggle, 
            onChanged: setState(() {
              _toggle = !_toggle;
            })
          )
        ],
      ),
    );
  }
}
