// import 'package:flutter/material.dart';
//
//
//
// class GanpatiScreen extends StatefulWidget {
//   @override
//   State<GanpatiScreen> createState() => _GanpatiScreenState();
// }
//
// class _GanpatiScreenState extends State<GanpatiScreen> {
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
//               'assets/images/aarti_img/GanpatiBappa_aarti .png', // Replace with your background image path
//               fit: BoxFit.fill,
//             ),
//             // Foreground content
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//
//               children: [
//                 // Ganpati image at the top center
//                 Padding(
//                   padding: const EdgeInsets.only(top: 40.0),
//                   child: Image.asset(
//                     'assets/images/god_img/G.png', // Replace with your Ganpati image path
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
//                       ''' सुखकर्ता दु:खहर्ता वार्ता विघ्नाची।
// नुरवी पुरवी प्रेम कृपा जयाची॥
// सर्वांगी सुंदर उटी शेंदुराची।
// कंठी झळके माळ मुक्ताफळांची॥
//
// जय देव, जय देव। जय मंगलमूर्ती।
// दर्शनमात्रे मन:कामना पुरती॥
// जय देव, जय देव।
//
// रत्नखचित फरा तुज गौरीकुमरा।
// चंदनाची उटी कुंकुमकेशरा॥
// हिरेजडित मुकुट शोभतो बरा।
// रुणझुणती नूपुरे चरणी घागरा॥
//
// जय देव, जय देव। जय मंगलमूर्ती।
// दर्शनमात्रे मन:कामना पुरती॥
// जय देव, जय देव।
//
// लंबोदर पीतांबर फणीवर वंसा।
// सुरवर मंदिरा सुरवर वंदना॥
// सप्तरिषी सप्त जण सेविती खांसा।
// तुमची कृपा असो आम्हा वरसा॥
//
// जय देव, जय देव। जय मंगलमूर्ती।
// दर्शनमात्रे मन:कामना पुरती॥
// जय देव, जय देव।
// ''',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 12, // Adjust font size as needed
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
//
//               // children: [
//               //   // Title
//               //   // Text(
//               //   //   'Ganpati\nAarti & Mantra',
//               //   //   textAlign: TextAlign.center,
//               //   //   style: TextStyle(
//               //   //     fontSize: screenWidth * 0.08, // Responsive text size
//               //   //     fontWeight: FontWeight.bold,
//               //   //     color: Colors.white,
//               //   //   ),
//               //   // ),
//               //   SizedBox(height: screenHeight * 0.05), // Responsive spacing
//               //   // Ganpati image
//               //   // Image.asset(
//               //   //   'assets/ganesha.png', // Replace with your Ganpati image path
//               //   //   height: screenHeight * 0.4, // Responsive image height
//               //   // ),
//               // ],
//
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class GanpatiScreen extends StatefulWidget {
  @override
  State<GanpatiScreen> createState() => _GanpatiScreenState();
}

class _GanpatiScreenState extends State<GanpatiScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    // Start playing the audio when the screen is loaded
    _playAudio();

    // Listen for when the audio completes
    _audioPlayer.onPlayerComplete.listen((event) {
      // Navigate back to the home screen when the audio finishes
      Navigator.pop(context);
    });
  }

  // Play the audio from assets
  void _playAudio() async {
    try {
      await _audioPlayer.play(
        AssetSource('audio/ganesh.mp3'), // Use AssetSource for local assets
      );
      setState(() {
        isPlaying = true;
      });
    } catch (e) {
      print("Error playing audio: $e");
    }
  }


  @override
  void dispose() {
    super.dispose();
    _audioPlayer.stop(); // Stop the audio when leaving the screen
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
              'assets/images/aarti_img/GanpatiBappa_aarti .png', // Replace with your background image path
              fit: BoxFit.fill,
            ),
            // Foreground content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ganpati image at the top center
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Image.asset(
                    'assets/images/god_img/G.png', // Replace with your Ganpati image path
                    height: screenHeight * 0.25, // Responsive image height
                    width: screenWidth * 0.5, // Responsive image width
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20), // Space between image and lyrics

                // Ganpati Aarti lyrics
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      ''' 
सुखकर्ता दुःखहर्ता वार्ता विघ्नाची ।
नुरवी पुरवी प्रेम कृपा जयाची ।

सर्वांगी सुंदर उटी शेंदुराची ।
कंठी झळके माळ मुक्ताफळांची ।। १ ।।

जय देव जय देव जय मंगलमूर्ति ।
दर्शनमात्रे मनःकामना पुरती ।। धृ० ।।

रत्नखचित फरा तुज गौरीकुमरा ।
चंदनाची उटी कुंकुमकेशरा ।

हिरेजडित मुकुट शोभतो बरा ।
रुणझुणती नूपुरे चरणीं घागरिया ।। २ ।।

लंबोदर पीतांबर फणिवरबंधना ।
सरळ सोंड वक्रतुंड त्रिनयना ।

दास रामाचा वाट पाहे सदना ।
संकटी पावावे, निर्वाणी रक्षावे सुरवरवंदना ।। ३

जय देव जय देव जय मंगलमूर्ति ।
दर्शनमात्रे मनःकामना पुरती ।।   
''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
