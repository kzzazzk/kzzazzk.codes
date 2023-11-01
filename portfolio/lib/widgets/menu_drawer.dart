import 'package:flutter/material.dart';
import 'package:portfolio/widgets/constants/menu_drawer_constants.dart';
import 'package:portfolio/widgets/menu_drawer_items/menu_drawer_divider.dart';
import 'package:portfolio/widgets/menu_drawer_items/menu_drawer_ic_button.dart';
import 'package:portfolio/widgets/menu_drawer_items/menu_drawer_topic.dart';
import 'package:universal_html/html.dart' as html;

class MenuDrawer extends StatelessWidget {
  final List<Widget> drawerTopics = [], iconButtons = [];

  MenuDrawer({Key? key}) : super(key: key) {
    fillIconButtons();
    fillDrawerTopics();
  }

  void fillIconButtons() {
    for (var icon in DrawerConstants.icons) {
      iconButtons.addAll([
        CustomIconButton(iconData: icon),
        const SizedBox(width: 15),
      ]);
    }
  }

  void fillDrawerTopics() {
    for (int i = 0; i < DrawerConstants.topics.length; i++) {
      drawerTopics.addAll([
        const SizedBox(height: 10),
        DrawerTopic(
            text: DrawerConstants.topics[i],
            icon: DrawerConstants.topicIcons[i]),
      ]);
    }
  }

  void handleWindowResize(BuildContext context) {
    if (Scaffold.of(context).isEndDrawerOpen == true) {
      if (html.window.innerWidth != null && html.window.innerWidth! >= 800) {
        Navigator.pop(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    html.window.onResize.listen((_) {
      handleWindowResize(context);
    });
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
                    //const Spacer(),
                    //const CustomDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the Row horizontally
                      children: [...iconButtons],
                    ),
                    const SizedBox(height: 12),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Copyright © 2023 | Zakaria Lasry Sahraoui',
                        style: TextStyle(
                          color: Color(0xffE7B10A),
                          fontSize: 14,
                        ),
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
