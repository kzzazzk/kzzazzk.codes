import 'package:animate_gradient/animate_gradient.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/menu_drawer.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/app_bar_content.dart';
import 'package:portfolio/widgets/ripple_grid_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
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
          appBar: ResponsiveWidget.isSmallScreen(context)
              ? AppBar(
                  backgroundColor: const Color(0xff2a2a2a),
                  elevation: 0,
                  centerTitle: true,
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/ZakaLogo.png',
                        scale: 0.7,
                      ),
                    ],
                  ),
                )
              : PreferredSize(
                  preferredSize: Size(screenSize.width, 70),
                  child: const AppBarContents(),
                ),
          endDrawer: const MenuDrawer(),
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
                  delay: ResponsiveWidget.isSmallScreen(context) ? 75000 : 1,
                ),
              ),
              Center(
                child: SizedBox(
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontFamily: 'GeistMono',
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: ResponsiveWidget.isSmallScreen(context)
                          ? 15
                          : screenSize.width / 50,
                    ),
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TypewriterAnimatedText(
                            "<p> Hi! I'm Zaka/kzzazk a 4th year Software Engineering student </p>",
                            textAlign: TextAlign.center,
                            speed: const Duration(milliseconds: 75)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
