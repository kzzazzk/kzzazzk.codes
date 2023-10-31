import 'package:flutter/material.dart';
import 'package:portfolio/utils/custom_icons.dart';
import 'package:portfolio/widgets/menu_drawer_items/menu_drawer_divider.dart';
import 'package:portfolio/widgets/menu_drawer_items/menu_drawer_ic_button.dart';
import 'package:portfolio/widgets/menu_drawer_items/menu_drawer_topic.dart';

class MenuDrawer extends StatelessWidget {
  final topics = ['  Home', '  About', '  Projects', '  Contact'];
  final icons = [
    CustomIcons.linkedin,
    CustomIcons.github,
    CustomIcons.spotify,
    CustomIcons.instagram
  ];
  List<Widget> drawerTopics = [], iconButtons = [];

  MenuDrawer({
    Key? key,
  }) : super(key: key) {
    fillIconButtons();
    fillDrawerTopics();
  }

  void fillIconButtons() {
    for (var icon in icons) {
      iconButtons.addAll([
        CustomIconButton(iconData: icon),
        const SizedBox(width: 15),
      ]);
    }
  }

  void fillDrawerTopics() {
    for (var topic in topics) {
      drawerTopics.addAll([
        const SizedBox(height: 10),
        DrawerTopic(text: '  $topic'),
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF2A2A2A),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Zaka | kzzazzk',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              const SizedBox(height: 5),
              ...drawerTopics,
              Expanded(
                child: Column(
                  children: [
                    const Spacer(),
                    const CustomDivider(),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the Row horizontally
                      children: [...iconButtons],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Copyright © 2023 | Zakaria Lasry Sahraoui',
                      style: TextStyle(
                        color: Color(0xffE7B10A),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
