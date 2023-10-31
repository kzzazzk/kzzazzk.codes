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
        ? InkWell(
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
                        ? Colors.white10
                        : Colors.transparent, // Set the background color here
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 0, // Adjust the positioning as needed
                          left: 0, // Adjust the positioning as needed
                          child: IconButton(
                            onPressed: () {
                              // Handle tap event if needed
                            },
                            icon: Icon(
                              widget.iconData,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // You can add other elements here, and the icon will remain unmovable.
                      ],
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
