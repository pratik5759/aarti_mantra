import 'package:aarti_mantra/splash_screen/splash_screens/durga_splash.dart';
import 'package:aarti_mantra/splash_screen/splash_screens/dutta_splash.dart';
import 'package:aarti_mantra/splash_screen/splash_screens/galin_splash.dart';
import 'package:aarti_mantra/splash_screen/splash_screens/ganesh_splash.dart';
import 'package:aarti_mantra/splash_screen/splash_screens/shiv_splash.dart';
import 'package:aarti_mantra/splash_screen/splash_screens/vitthal_splash.dart';
import 'package:flutter/material.dart';

import 'aarti_screen/durga_screen.dart';
import 'aarti_screen/dutta_screen.dart';
import 'aarti_screen/ganesh_screen.dart';
import 'aarti_screen/shiv_screen.dart';
import 'aarti_screen/vitthal_screen.dart';
import 'home_screen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AartiSangrahScreen(),
    );
  }
}



