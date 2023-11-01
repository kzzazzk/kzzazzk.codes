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
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white, // border color
          width: 2, // border width
        ),
      ),
      child: SizedBox.fromSize(
        size: const Size(45, 45), // button width and height
        child: ClipOval(
          child: Material(
            color: Colors.transparent, // button color
            child: InkWell(
              splashColor: Colors.transparent, // splash color
              onTap: () {}, // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(widget.iconData, color: Colors.white), // icon
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
