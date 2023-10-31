import 'package:flutter/material.dart';
import 'package:portfolio/utils/custom_icons.dart';

class CustomIconButton extends StatelessWidget {
  IconData iconData;
  CustomIconButton({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1.5),
        ),
        child: IconButton(
          onPressed: () => {},
          icon: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
