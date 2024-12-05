// import 'package:digitalclock/screens/clock-digi.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowMaterialGrid: false,
//       theme: Theme.of(context).copyWith(
//         textTheme: GoogleFonts.pressStart2pTextTheme(),
//         scaffoldBackgroundColor: Colors.black,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const ClockScreen(),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'dart:async'; // For Timer
import 'package:intl/intl.dart'; // Optional for time formatting

void main() {
  runApp(DigitalClockApp());
}

class DigitalClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Clock',
      theme: ThemeData.dark(),
      home: DigitalClockScreen(),
    );
  }
}

class DigitalClockScreen extends StatefulWidget {
  @override
  _DigitalClockScreenState createState() => _DigitalClockScreenState();
}

class _DigitalClockScreenState extends State<DigitalClockScreen> {
  String _time = ""; // Variable to store the current time
  String _date = ""; // Variable to store the current date

  @override
  void initState() {
    super.initState();
    _updateTime(); // Initial time setup
    Timer.periodic(Duration(seconds: 1), (Timer t) => _updateTime());
  }

  void _updateTime() {
    final now = DateTime.now();
    setState(() {
      _time = DateFormat('HH:mm:ss').format(now); // Format: 24-hour time
      _date = DateFormat('EEEE, MMM d, y').format(now); // Format: Full date
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital Clock'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _time,
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              _date,
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
