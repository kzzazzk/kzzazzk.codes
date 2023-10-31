import 'package:flutter/material.dart';

class CustomHoverText extends StatefulWidget {
  final String text;
  bool isHovering;
  CustomHoverText({super.key, required this.text, required this.isHovering});

  @override
  State<CustomHoverText> createState() => _CustomHoverTextState();
}

class _CustomHoverTextState extends State<CustomHoverText> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => widget.isHovering = true),
      onExit: (_) => setState(() => widget.isHovering = false),
      child: Text(
        widget.text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: widget.isHovering ? const Color(0xffE7B10A) : Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
