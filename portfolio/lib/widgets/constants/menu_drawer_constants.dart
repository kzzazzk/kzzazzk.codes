import 'package:flutter/material.dart';
import 'package:portfolio/utils/custom_icons.dart';

class DrawerConstants {
  static final urls = [
    Uri.parse('https://www.linkedin.com/in/zakaria-lasry-sahraoui-33ab501ba'),
    Uri.parse('https://github.com/kzzazzk'),
    Uri.parse('https://open.spotify.com/user/zsahraoui20?si=dafa472c3ae94cae'),
    Uri.parse('https://www.instagram.com/kzzazzk/')
  ];

  static final icons = [
    CustomIcons.linkedin,
    CustomIcons.github,
    CustomIcons.spotify,
    CustomIcons.instagram
  ];
  static final topics = ['Home', 'About', 'Projects', 'Contact'];
  static final topicIcons = [
    Icons.home,
    Icons.info_outline,
    Icons.library_books,
    Icons.person
  ];
}
