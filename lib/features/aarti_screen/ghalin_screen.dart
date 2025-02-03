// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
//
// class GhalinScreen extends StatefulWidget {
//   @override
//   State<GhalinScreen> createState() => _GhalinScreenState();
// }
//
// class _GhalinScreenState extends State<GhalinScreen> {
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
//         AssetSource('audio/Galin.mp3'), // Use AssetSource for local assets
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
//               'assets/images/aarti_img/GhalinLotangan_aarti.png',
//               // Replace with your background image path
//               fit: BoxFit.fitWidth,
//             ),
//             // Foreground content
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Ganpati image at the top center
//                 Padding(
//                   padding: const EdgeInsets.only(top: 55.0),
//                   child: Image.asset(
//                     'assets/images/god_img/om1.png',
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
//                       AppLocalizations.of(context)!.ghalin,
//
// //                       '''
// //
// //  घालीन लोटांगण वंदीन चरण ।
// //  डोळ्यांनी पाहिन रूप तुझे ।
// //
// // प्रेमें आलिंगीन आनंद पूजन ।
// // भावे ओवाळिन म्हणे नामा ।।
// //
// // त्वमेव माता पिता त्वमेव ।
// // त्वमेव बन्धु: सखा त्वमेव ।
// //
// // त्वमेव विद्या द्रविणं त्वमेव ।
// // त्वमेव सर्वं मम देवदेव ।।
// //
// // कायेन वाचा मनसेंद्रियैर्वा ।
// // बुध्यात्मना वा प्रकृति स्वभावात् ।
// //
// // करमि यद्यत् सकलं परस्मै ।
// // नारायणायेती समर्पयामि ।।
// //
// // अच्युतं केशवं राम नारायणम्
// // कृष्णदामोदरं वासुदेवं भजे।
// //
// // श्रीधरं माधवं गोपिकावल्लभम्
// // जानकीनायकं रामचंद्र भजे ।।
// //
// // हरे राम हरे राम राम राम हरे हरे हरे कृष्ण हरे कृष्ण कृष्ण कृष्ण हरे हरे ।।
// //  ।। मंगलमुर्ती मोरया ।। ।। गणपतिबाप्पा मोरया ।।
// // ''',
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


// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
// class GhalinScreen extends StatefulWidget {
//   @override
//   State<GhalinScreen> createState() => _GhalinScreenState();
// }
//
// class _GhalinScreenState extends State<GhalinScreen> {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   bool isPlaying = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _playAudio();
//
//     _audioPlayer.onPlayerComplete.listen((event) {
//       Navigator.pop(context);
//     });
//   }
//
//   void _playAudio() async {
//     try {
//       await _audioPlayer.play(AssetSource('audio/Galin.mp3'));
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
//                 // Background Image
//                 Image.asset(
//                   'assets/images/aarti_img/GhalinLotangan_aarti.png',
//                   fit: BoxFit.cover,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // Top Ganpati Image
//                     Padding(
//                       padding: EdgeInsets.only(top: screenHeight * 0.05),
//                       child: Image.asset(
//                         'assets/images/god_img/om1.png',
//                         height: screenHeight * 0.22,
//                         width: screenWidth * 0.45,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     SizedBox(height: screenHeight * 0.02),
//
//                     // Aarti Lyrics
//                     Expanded(
//                       child: SingleChildScrollView(
//                         padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//                         child: Text(
//                           AppLocalizations.of(context)!.ghalin,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.045,
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
//
//


import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GhalinScreen extends StatefulWidget {
  @override
  State<GhalinScreen> createState() => _GhalinScreenState();
}

class _GhalinScreenState extends State<GhalinScreen> {
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
      await _audioPlayer.play(AssetSource('audio/Galin.mp3'));
      setState(() {
        isPlaying = true;
      });
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  // Method to toggle audio playback when double-tapped
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
              onDoubleTap: _toggleAudio, // Detect double-tap to pause or resume audio
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Background Image
                  Image.asset(
                    'assets/images/aarti_img/GhalinLotangan_aarti.png',
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Top Ganpati Image
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.05),
                        child: Image.asset(
                          'assets/images/god_img/om1.png',
                          height: screenHeight * 0.22,
                          width: screenWidth * 0.45,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),

                      // Aarti Lyrics
                      Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                          child: Text(
                            AppLocalizations.of(context)!.ghalin,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
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
