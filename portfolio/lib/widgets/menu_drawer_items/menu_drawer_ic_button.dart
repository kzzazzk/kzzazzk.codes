import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomIconButton extends StatefulWidget {
  final IconData iconData;
  final Uri url;

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
              if (!await launchUrl(widget.url)) {
                throw Exception('Could not launch $widget.url');
              }
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
