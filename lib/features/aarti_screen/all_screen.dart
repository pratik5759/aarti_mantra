// import 'package:flutter/material.dart';
//
// class AllScreen extends StatefulWidget {
//   final List<Widget> aartiScreens;
//
//   AllScreen({required this.aartiScreens});
//
//   @override
//   _AllScreenState createState() => _AllScreenState();
// }
//
// class _AllScreenState extends State<AllScreen> {
//   int currentAartiIndex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _showAartiScreen();
//     });
//   }
//
//   void _showAartiScreen() {
//     if (currentAartiIndex < widget.aartiScreens.length) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => GestureDetector(
//             onTap: () {
//               setState(() {
//                 currentAartiIndex++;
//               });
//               Navigator.pop(context); // Go back to allow pushing the next screen
//               _showAartiScreen(); // Show the next aarti screen
//             },
//             child: widget.aartiScreens[currentAartiIndex],
//           ),
//         ),
//       );
//     } else {
//       Navigator.pop(context); // Exit when all screens are done
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(); // No intermediate screen
//   }
// }
// import 'package:flutter/material.dart';
//
// class AllScreen extends StatefulWidget {
//   final List<Widget> aartiScreens;
//
//   AllScreen({required this.aartiScreens});
//
//   @override
//   _AllScreenState createState() => _AllScreenState();
// }
//
// class _AllScreenState extends State<AllScreen> {
//   int currentAartiIndex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _showAartiScreen();
//     });
//   }
//
//   void _showAartiScreen() async {
//     if (currentAartiIndex < widget.aartiScreens.length) {
//       // Show the current aarti screen
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => GestureDetector(
//             onTap: () {
//               setState(() {
//                 currentAartiIndex++;
//               });
//               Navigator.pop(context); // Go back to allow pushing the next screen
//               _showAartiScreen(); // Show the next aarti screen
//             },
//             child: widget.aartiScreens[currentAartiIndex],
//           ),
//         ),
//       );
//
//       // Wait for 5 seconds before moving to the next screen
//       await Future.delayed(Duration(seconds: 90));
//
//       // Move to the next aarti screen automatically after 5 seconds
//       setState(() {
//         currentAartiIndex++;
//       });
//
//       // Pop the current screen and show the next one
//       Navigator.pop(context);
//       _showAartiScreen();
//     } else {
//       Navigator.pop(context); // Exit when all screens are done
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(); // No intermediate screen
//   }
// }




import 'package:flutter/material.dart';

import '../home_screen/homescreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AllScreen extends StatefulWidget {
  final List<Widget> aartiScreens;

  AllScreen({required this.aartiScreens});

  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  int currentAartiIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showAartiScreen();
    });
  }


  void _showAartiScreen() async {
    if (currentAartiIndex >= 0 && currentAartiIndex < widget.aartiScreens.length) {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GestureDetector(
            onTapUp: (details) {
              final screenWidth = MediaQuery.of(context).size.width;
              final tapPosition = details.globalPosition.dx;

              if (currentAartiIndex == widget.aartiScreens.length - 1) {
                if (tapPosition > screenWidth / 2) {
                  _navigateToHomeScreen();
                }
              } else {
                if (tapPosition < screenWidth / 2) {
                  if (currentAartiIndex > 0) {
                    setState(() {
                      currentAartiIndex--;
                    });
                    Navigator.pop(context, true); // Go back with result
                  }
                } else {
                  if (currentAartiIndex < widget.aartiScreens.length - 1) {
                    setState(() {
                      currentAartiIndex++;
                    });
                    Navigator.pop(context, true); // Go back with result
                  }
                }
              }
            },
            child: widget.aartiScreens[currentAartiIndex],
          ),
        ),
      ).then((value) {
        // If user presses back, go to HomeScreen
        if (value != true) {
          _navigateToHomeScreen();
        } else {
          _showAartiScreen();
        }
      });

      // Auto move to next screen after 90 seconds
      if (currentAartiIndex < widget.aartiScreens.length - 1) {
        await Future.delayed(Duration(seconds: 90));
        if (mounted) {
          setState(() {
            currentAartiIndex++;
          });
          Navigator.pop(context, true); // Pop current screen and continue
        }
      }
    } else {
      _navigateToHomeScreen();
    }
  }
  //
  // void _showAartiScreen() async {
  //   if (currentAartiIndex >= 0 && currentAartiIndex < widget.aartiScreens.length) {
  //     await Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => GestureDetector(
  //           onTapUp: (details) {
  //             final screenWidth = MediaQuery.of(context).size.width;
  //             final tapPosition = details.globalPosition.dx;
  //
  //             if (currentAartiIndex == widget.aartiScreens.length - 1) {
  //               // If it's the last screen and right side is tapped, navigate to HomeScreen
  //               if (tapPosition > screenWidth / 2) {
  //                 _navigateToHomeScreen();
  //               }
  //             } else {
  //               // If not the last screen, go to the next or previous aarti based on tap position
  //               if (tapPosition < screenWidth / 2) {
  //                 // Left side tap: Go to the previous aarti if possible
  //                 if (currentAartiIndex > 0) {
  //                   setState(() {
  //                     currentAartiIndex--;
  //                   });
  //                   Navigator.pop(context); // Go back to allow pushing the previous screen
  //                   _showAartiScreen(); // Show the previous aarti screen
  //                 }
  //               } else {
  //                 // Right side tap: Go to the next aarti if possible
  //                 if (currentAartiIndex < widget.aartiScreens.length - 1) {
  //                   setState(() {
  //                     currentAartiIndex++;
  //                   });
  //                   Navigator.pop(context); // Go back to allow pushing the next screen
  //                   _showAartiScreen(); // Show the next aarti screen
  //                 }
  //               }
  //             }
  //           },
  //           child: widget.aartiScreens[currentAartiIndex],
  //         ),
  //       ),
  //     );
  //
  //     // Automatically move to the next screen after 90 seconds
  //     if (currentAartiIndex < widget.aartiScreens.length - 1) {
  //       await Future.delayed(Duration(seconds: 90));
  //       if (mounted) {
  //         setState(() {
  //           currentAartiIndex++;
  //         });
  //         Navigator.pop(context); // Pop the current screen
  //         _showAartiScreen(); // Show the next screen
  //       }
  //     }
  //   } else {
  //     // Navigate to HomeScreen when all aarti screens are done
  //     _navigateToHomeScreen();
  //   }
  // }

  void _navigateToHomeScreen() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => AartiSangrahScreen()),
          (route) => false, // Clear all previous routes
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(), // No intermediate UI for this screen
    );
  }

  // Handle back button press using Navigator.pop
}





