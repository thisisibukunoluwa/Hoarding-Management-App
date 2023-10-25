

import 'package:flutter/material.dart';
import 'package:hoardr/gen/assets.gen.dart';

class CategoryChip extends StatelessWidget {

  String image = Assets.placeholder.values[0].path;
  final String label;
  // final bool isSelected;
  final String imagePath;

  const CategoryChip(
      {super.key, required this.label,
      // required this.isSelected,
      this.imagePath = 
      });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200, // Adjust the width and height to your desired size
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black, // Border color
            width: 2.0, // Border width
          ),
        ),
        child: ClipOval(child: Image.asset(imagePath)));
  }
}
