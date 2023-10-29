import 'package:flutter/material.dart';
import 'package:portfolio/utils/custom_icons.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

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
              const Text(
                'kzzazzk',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 10),
              Container(
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
                    child: const Text(
                      '  Home',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
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
                    child: const Text(
                      '  About',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
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
                    child: const Text(
                      '  Projects',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
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
                    child: const Text(
                      '  Contact',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Color(0xffE7B10A),
                  thickness: 2,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the Row horizontally
                        children: [
                          Center(
                            // Wrap each Container with Center
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1.5),
                              ),
                              child: IconButton(
                                onPressed: () => {},
                                icon: const Icon(
                                  CustomIcons.linkedin_squared,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1.5),
                              ),
                              child: IconButton(
                                onPressed: () => {},
                                icon: const Icon(
                                  CustomIcons.github_circled,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1.5),
                              ),
                              child: IconButton(
                                onPressed: () => {},
                                icon: const Icon(
                                  CustomIcons.spotify,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1.5),
                              ),
                              child: IconButton(
                                onPressed: () => {},
                                icon: const Icon(
                                  CustomIcons.instagram,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
