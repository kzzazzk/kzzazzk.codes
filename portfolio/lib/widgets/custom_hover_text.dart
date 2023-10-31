import 'package:flutter/material.dart';

class HoverText extends StatefulWidget {
  final String text;
  HoverText({super.key, required this.text});

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: Text(
        widget.text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: isHovering ? const Color(0xffE7B10A) : Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
