

import 'package:flutter/material.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

    return Padding( 
      padding: EdgeInsets.symmetric(
        horizontal:19.7.w , vertical: 1.7.h
       ),
        child: Card(
          elevation: 0.4,
          shadowColor: Color.fromARGB(255, 17, 4, 4),
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
