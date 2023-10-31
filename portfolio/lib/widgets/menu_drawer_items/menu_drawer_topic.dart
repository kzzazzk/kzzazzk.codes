import 'package:flutter/material.dart';

class DrawerTopic extends StatelessWidget {
  String text;
  DrawerTopic({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.black45,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: () {},
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
