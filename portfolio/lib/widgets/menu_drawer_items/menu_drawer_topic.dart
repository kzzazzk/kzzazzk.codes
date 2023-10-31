import 'package:flutter/material.dart';

class DrawerTopic extends StatefulWidget {
  final String text;
  final IconData icon;
  const DrawerTopic({super.key, required this.text, required this.icon});
  State<DrawerTopic> createState() => _DrawerTopicState();
}

class _DrawerTopicState extends State<DrawerTopic> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: isHovering ? Colors.white10 : Colors.black45,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Icon(
              widget.icon,
              color: Colors.white,
            ),
            const SizedBox(width: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {},
                child: Text(
                  widget.text,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
