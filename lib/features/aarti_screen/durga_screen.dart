// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
// class DurgaScreen extends StatefulWidget {
//   @override
//   State<DurgaScreen> createState() => _DurgaScreenState();
// }
//
// class _DurgaScreenState extends State<DurgaScreen> {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   bool isPlaying = false;
//
//   @override
//   void initState() {
//     super.initState();
//     // Start playing the audio when the screen is loaded
//     _playAudio();
//
//     // Listen for when the audio completes
//     _audioPlayer.onPlayerComplete.listen((event) {
//       // Navigate back to the home screen when the audio finishes
//       Navigator.pop(context);
//     });
//   }
//
//   // Play the audio from assets
//   void _playAudio() async {
//     try {
//       await _audioPlayer.play(
//         AssetSource('audio/durga.mp3'), // Use AssetSource for local assets
//       );
//       setState(() {
//         isPlaying = true;
//       });
//     } catch (e) {
//       print("Error playing audio: $e");
//     }
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _audioPlayer.stop(); // Stop the audio when leaving the screen
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // Get screen dimensions for responsive sizing
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           fit: StackFit.expand,
//           children: [
//             // Background image
//             Image.asset(
//               'assets/images/aarti_img/MaaDurga_aarti.png',
//               // Replace with your background image path
//               fit: BoxFit.fitWidth,
//             ),
//             // Foreground content
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Ganpati image at the top center
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: Image.asset(
//                     'assets/images/god_img/Dug.png',
//                     // Replace with your Ganpati image path
//                     height: screenHeight * 0.25, // Responsive image height
//                     width: screenWidth * 0.5, // Responsive image width
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//                 SizedBox(height: 20), // Space between image and lyrics
//
//                 // Ganpati Aarti lyrics
//                 Expanded(
//                   child: SingleChildScrollView(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Text(
//
//                       AppLocalizations.of(context)!.durga,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 16, // Adjust font size as needed
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black, // Text color
//                         shadows: [
//                           // Shadow(
//                           //   blurRadius: 5.0,
//                           //   color: Colors.black.withOpacity(0.8),
//                           //   offset: Offset(1.5, 1.5),
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//

//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
// class DurgaScreen extends StatefulWidget {
//   @override
//   State<DurgaScreen> createState() => _DurgaScreenState();
// }
//
// class _DurgaScreenState extends State<DurgaScreen> {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   bool isPlaying = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _playAudio();
//     _audioPlayer.onPlayerComplete.listen((event) {
//       Navigator.pop(context);
//     });
//   }
//
//   void _playAudio() async {
//     try {
//       await _audioPlayer.play(AssetSource('audio/durga.mp3'));
//       setState(() {
//         isPlaying = true;
//       });
//     } catch (e) {
//       print("Error playing audio: $e");
//     }
//   }
//
//
//
//
//   void _toggleAudio() async {
//     if (isPlaying) {
//       await _audioPlayer.pause();
//       setState(() {
//         isPlaying = false;
//       });
//     } else {
//       await _audioPlayer.resume();
//       setState(() {
//         isPlaying = true;
//       });
//     }
//   }
//   @override
//   void dispose() {
//     _audioPlayer.stop();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         double screenWidth = constraints.maxWidth;
//         double screenHeight = constraints.maxHeight;
//
//         return SafeArea(
//           child: Scaffold(
//             body: Stack(
//               fit: StackFit.expand,
//               children: [
//                 Image.asset(
//                   'assets/images/aarti_img/MaaDurga_aarti.png',
//                   fit: BoxFit.cover,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 20.0),
//                       child: Image.asset(
//                         'assets/images/god_img/Dug.png',
//                         height: screenHeight * 0.25,
//                         width: screenWidth * 0.5,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     SizedBox(height: screenHeight * 0.02),
//                     Expanded(
//                       child: SingleChildScrollView(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.05,
//                         ),
//                         child: Text(
//                           AppLocalizations.of(context)!.durga,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.04,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }




import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DurgaScreen extends StatefulWidget {
  @override
  State<DurgaScreen> createState() => _DurgaScreenState();
}

class _DurgaScreenState extends State<DurgaScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _playAudio();
    _audioPlayer.onPlayerComplete.listen((event) {
      Navigator.pop(context);
    });
  }

  void _playAudio() async {
    try {
      await _audioPlayer.play(AssetSource('audio/durga.mp3'));
      setState(() {
        isPlaying = true;
      });
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  void _toggleAudio() async {
    if (isPlaying) {
      await _audioPlayer.pause();
      setState(() {
        isPlaying = false;
      });
    } else {
      await _audioPlayer.resume();
      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  void dispose() {
    _audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return SafeArea(
          child: Scaffold(
            body: GestureDetector(
              onDoubleTap: _toggleAudio, // Detect double tap and toggle audio
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/aarti_img/MaaDurga_aarti.png',
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.asset(
                          'assets/images/god_img/Dug.png',
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.5,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05,
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.durga,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
