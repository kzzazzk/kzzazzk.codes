import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';

class CustomIconButton extends StatefulWidget {
  final IconData iconData;
  const CustomIconButton({super.key, required this.iconData});

  @override
  State<StatefulWidget> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isHovering = false;
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? GestureDetector(
            onTap: () {
              setState(() {
                isTapped = true;
              });
              Future.delayed(const Duration(milliseconds: 10), () {
                setState(() {
                  isTapped = false;
                });
              });
            },
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(50), // Adjust the radius as needed
                  child: Container(
                    color: isTapped
                        ? Colors.red
                        : Colors.blue, // Set the background color here
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        widget.iconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : MouseRegion(
            onEnter: (_) => setState(() => isHovering = true),
            onExit: (_) => setState(() => isHovering = false),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    color: isHovering ? Colors.white10 : Colors.transparent,
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        widget.iconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
