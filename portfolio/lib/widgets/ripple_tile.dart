import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class RippleTile extends StatelessWidget {
  final bool isTapped;

  const RippleTile({super.key, required this.isTapped});

  @override
  Widget build(BuildContext context) {
    final color = isTapped ? Colors.transparent : const Color(0xff2a2a2a);

    return HoverAnimatedContainer(
      hoverDecoration: BoxDecoration(
        color: isTapped
            ? Colors.black.withOpacity(0.2)
            : const Color(0xff474747), // Change the color on hover
      ),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.transparent, // Set the border color to transparent
          width: 10.0,
        ),
      ),
    );
  }
}
