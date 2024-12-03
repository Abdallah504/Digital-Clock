import 'package:digitalclock/screens/clock-digi.dart';
import 'package:flutter/material.dart';
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
      debugShowMaterialGrid: false,
      theme: Theme.of(context).copyWith(
        textTheme: GoogleFonts.pressStart2pTextTheme(),
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const ClockScreen(),
    );
  }
}

