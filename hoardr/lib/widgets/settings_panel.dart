

import 'package:flutter/material.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/utils/size_config.dart';

class SettingsPanel extends StatefulWidget {
  final String title;
  final String subtitle;
  final void Function()? onPressed;
  final bool isArrow;
  final bool isToggleButton;

  const SettingsPanel({
    super.key,
    required this.title,
    required this.subtitle,
    this.isArrow = true,
    this.isToggleButton = false,
    required this.onPressed,
  });

  @override
  State<SettingsPanel> createState() => _SettingsPanelState();
}

class _SettingsPanelState extends State<SettingsPanel> {
  @override
  Widget build(BuildContext context) {
    bool _toggle = false;
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
          //      BoxShadow(
          //   color: AppColors.demiLightDark2,
          //   spreadRadius: 1,
          //   blurRadius: 1,
          //   offset: const Offset(0, 5),
          // ),
          // BoxShadow(
          //   color: Colors.grey.shade300,
          //   offset: const Offset(0, 0),
          // )
            ]
        ),
        height: height * 0.08,
        width: width * 0.9,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,
                      style: Theme.of(context).textTheme.bodyMedium),
                  Text(
                    widget.subtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ]),
            if (widget.isArrow)
              IconButton(
                  onPressed: widget.onPressed,
                  icon: Icon(Icons.arrow_forward_ios)),
            if (widget.isToggleButton)
              Switch.adaptive(
                  activeColor: AppColors.primary,
                  activeTrackColor: AppColors.lightDark,
                  value: _toggle,
                  onChanged: (value) => setState(() {
                        _toggle = !_toggle;
                      }))
          ],
        ),
      ),
    );
  }
}
