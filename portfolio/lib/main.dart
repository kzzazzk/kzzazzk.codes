import 'package:flutter/material.dart';
import 'package:portfolio/screens/my_home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xFF2A2A2A),
      theme: ThemeData(textTheme: GoogleFonts.sourceCodeProTextTheme()),
      debugShowCheckedModeBanner: false,
      title: "kzzazzk | Zaka",
      home: const MyHomePage(),
    );
  }
}
