import 'dart:async';

import 'package:flutter/material.dart';

import '../../aarti_screen/vitthal_screen.dart';



class VitthalSplashScreen extends StatefulWidget {
  @override
  State<VitthalSplashScreen> createState() => _VitthalSplashScreenState();
}

class _VitthalSplashScreenState extends State<VitthalSplashScreen> {





  void initState() {
    super.initState();
    // Set a timer to navigate after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VitthalScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Image.asset(
              'assets/images/splash_screen/VitthalBhagwan.png', // Replace with your background image path
              fit: BoxFit.fitWidth,
            ),
            // Foreground content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Title
                // Text(
                //   'Ganpati\nAarti & Mantra',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     fontSize: screenWidth * 0.08, // Responsive text size
                //     fontWeight: FontWeight.bold,
                //     color: Colors.white,
                //   ),
                // ),
                SizedBox(height: screenHeight * 0.05), // Responsive spacing
                // Ganpati image
                Image.asset(
                  'assets/images/god_img/V.png', // Replace with your Ganpati image path
                  height: screenHeight * 0.4, // Responsive image height
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
