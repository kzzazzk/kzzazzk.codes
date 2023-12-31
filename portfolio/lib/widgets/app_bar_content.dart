import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_hover_text.dart';
import 'dart:html' as html;

class AppBarContents extends StatefulWidget {
  const AppBarContents({super.key});

  @override
  State<AppBarContents> createState() => _AppBarContentsState();
}

class _AppBarContentsState extends State<AppBarContents> {
  late bool isHoveringTitle = false;
  late bool isHoveringHome = false;
  late bool isHoveringAbout = false;
  late bool isHoveringProjects = false;
  late bool isHoveringContact = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xff2a2a2a), // Set the background color here
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                html.window.open('https://kzzazzk.codes', "_self");
              },
              child: Image.asset(
                "assets/images/ZakaLogo.png",
                fit: BoxFit.cover,
                width: 40, // Set the desired width
                height: 40, // Set the desired height
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(width: 7),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? isHoveringTitle = true : isHoveringTitle = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    child: HoverText(text: 'kzzazzk'),
                    onTap: () async {
                      html.window.open('https://kzzazzk.codes', "_self");
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? isHoveringHome = true : isHoveringHome = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHoveringHome,
                      child: Container(
                          height: 2, width: 20, color: const Color(0xffE7B10A)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: screenSize.width / 25,
            ),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? isHoveringAbout = true : isHoveringAbout = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHoveringAbout,
                      child: Container(
                          height: 2, width: 20, color: const Color(0xffE7B10A)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: screenSize.width / 25,
            ),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? isHoveringProjects = true
                      : isHoveringProjects = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Projects',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHoveringProjects,
                      child: Container(
                          height: 2, width: 20, color: const Color(0xffE7B10A)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: screenSize.width / 25,
            ),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? isHoveringContact = true : isHoveringContact = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Contact',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: isHoveringContact,
                      child: Container(
                          height: 2, width: 20, color: const Color(0xffE7B10A)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: screenSize.width / 80,
            ),
          ],
        ),
      ),
    );
  }
}
