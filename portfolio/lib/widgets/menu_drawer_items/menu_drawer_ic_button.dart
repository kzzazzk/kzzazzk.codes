import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final IconData iconData;

  const CustomIconButton({Key? key, required this.iconData}) : super(key: key);

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
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            style: IconButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.transparent, // Text color
              shape: const CircleBorder(),
            ),
            icon: Icon(
              widget.iconData,
              color: Colors.white,
            ),
            alignment: Alignment
                .center, // Center the icon both horizontally and vertically
          )),
    );
  }
}
