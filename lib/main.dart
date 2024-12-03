import 'package:flutter/material.dart';
import 'package:ujianukl/Dashboard.dart';
import 'package:ujianukl/bioskop.dart';
import 'package:ujianukl/daftar.dart';
import 'package:ujianukl/myticket.dart';
import 'package:ujianukl/splashscreen.dart';
import 'package:ujianukl/ticket.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/register': (context) => Daftar(),
        '/home': (context) => Dashboard(),
        '/cinema': (context) => CinemaPage(),
        '/ticket': (context) => Tiket(),
        '/mytickets': (context) => MyTicket(),
      },
    );
  }
}