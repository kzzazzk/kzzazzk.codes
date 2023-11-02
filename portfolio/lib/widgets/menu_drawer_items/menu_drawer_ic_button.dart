import 'package:flutter/material.dart';
import 'dart:html' as html;

class CustomIconButton extends StatefulWidget {
  final IconData iconData;
  final String url;

  const CustomIconButton({Key? key, required this.iconData, required this.url})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 1.5),
          ),
          child: TextButton(
            onPressed: () async {
              html.window.open(widget.url, "_blank");
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.transparent, // Text color
              shape: const CircleBorder(),
            ),
            child: Icon(
              widget.iconData,
              color: Colors.white,
            ), // Center the icon both horizontally and vertically
          )),
    );
  }
}
