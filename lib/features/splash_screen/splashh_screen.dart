// // import 'package:flutter/material.dart';
// // import 'dart:async';
// //
// // import '../home_screen/homescreen.dart'; // For using Timer
// //
// // class SplashScreen extends StatefulWidget {
// //   @override
// //   _SplashScreenState createState() => _SplashScreenState();
// // }
// //
// // class _SplashScreenState extends State<SplashScreen> {
// //   @override
// //   void initState() {
// //     super.initState();
// //     // Navigate to the login screen after a 3-second delay
// //     Timer(Duration(seconds: 5), () {
// //       Navigator.pushReplacement(
// //         context,
// //         MaterialPageRoute(builder: (context) => AartiSangrahScreen()),
// //       );
// //
// //
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors. lightBlueAccent[150], // Soft background color for a fresh look
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           children: [
// //             // Animated Icon (Farm-related icon)
// //             AnimatedContainer(
// //               duration: Duration(seconds: 2), // Smooth animation duration
// //               curve: Curves.easeInOut,
// //               child: Image.asset(
// //                 'assets/images/god_img/d.png',
// //                 width: 120,
// //                 height: 120,
// //                 fit: BoxFit.contain,
// //               ),
// //             ),
// //             SizedBox(height: 40), // Larger gap for a more airy layout
// //             // Welcome Text
// //             AnimatedDefaultTextStyle(
// //               duration: Duration(milliseconds: 0),
// //               style: TextStyle(
// //                 fontSize: 32,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.black ,
// //                 fontFamily: 'Roboto', // Add a clean font for a modern look
// //               ),
// //               child: Text(
// //                 'Welcome To Aarties',
// //               ),
// //             ),
// //             SizedBox(height: 30),
// //             // Loading Indicator with custom color and styling
// //             CircularProgressIndicator(
// //               valueColor: AlwaysStoppedAnimation<Color>(Colors.red!),
// //               strokeWidth: 4,
// //             ),
// //             SizedBox(height: 20), // Small gap before the loading indicator finishes
// //             Text(
// //               'Please Wait...',
// //               style: TextStyle(
// //                 fontSize: 16,
// //                 fontStyle: FontStyle.italic,
// //                 color: Colors. black,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
//
//
//
//
// import 'package:flutter/material.dart';
// import 'dart:async';
//
// import '../home_screen/homescreen.dart'; // For using Timer
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Navigate to the home screen after a 5-second delay
//     Timer(Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => AartiSangrahScreen()),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent[150], // Soft background color
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Animated Icon (Farm-related icon)
//             AnimatedContainer(
//               duration: Duration(seconds: 2), // Smooth animation duration
//               curve: Curves.easeInOut,
//               child: Image.asset(
//                 'assets/images/god_img/d.png',
//                 width: 120,
//                 height: 120,
//                 fit: BoxFit.contain,
//               ),
//             ),
//             SizedBox(height: 40), // Larger gap for a more airy layout
//             // Welcome Text
//             AnimatedDefaultTextStyle(
//               duration: Duration(milliseconds: 0),
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontFamily: 'Roboto', // Clean modern font
//               ),
//               child: Text(
//                 'Welcome To Aarties',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
