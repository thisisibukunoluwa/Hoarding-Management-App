import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  final void Function() onTap;
  const ViewAllButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(children: [
        Text(
          "View All",
          style: TextStyle(),
        ),
        Icon(Icons.arrow_forward_ios_sharp)
      ]),
    );
  }
}
