import 'package:animate_gradient/animate_gradient.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/widgets/menu_drawer.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/app_bar_content.dart';
import 'package:portfolio/widgets/ripple_grid_view.dart';
import 'dart:html' as html;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          key: MyHomePage.scaffoldKey,
          appBar: ResponsiveWidget.isSmallScreen(context)
              ? AppBar(
                  backgroundColor: const Color(0xff2a2a2a),
                  elevation: 0,
                  centerTitle: true,
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          html.window.open('https://kzzazzk.codes', "_self");
                        },
                        child: Center(
                            child: SvgPicture.asset(
                          "/assets/images/ZakaLogo.svg",
                          width: 45,
                          height: 45,
                        )),
                      ),
                    ],
                  ),
                )
              : PreferredSize(
                  preferredSize: Size(screenSize.width, 70),
                  child: const AppBarContents(),
                ),
          endDrawer: MenuDrawer(),
          body: Stack(
            children: [
              AnimateGradient(
                primaryBegin: Alignment.topLeft,
                primaryEnd: Alignment.bottomLeft,
                secondaryBegin: Alignment.bottomLeft,
                secondaryEnd: Alignment.topRight,
                primaryColors: const [Color(0xffa28e0b), Color(0xffa25907)],
                secondaryColors: const [Color(0xffa25907), Color(0xffa28e0b)],
                child: RippleGridView(
                  delay: ResponsiveWidget.isSmallScreen(context) ? 40000 : 1,
                ),
              ),
              Center(
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TypewriterAnimatedText(
                        "<p> Hi! I'm Zaka/kzzazk a 4th year Software Engineering student </p>",
                        textAlign: TextAlign.center,
                        textStyle: TextStyle(
                          fontFamily: 'GeistMono',
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 20
                              : screenSize.width / 50,
                        ),
                        speed: const Duration(milliseconds: 75)),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
