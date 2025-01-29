import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';



class ShivScreen extends StatefulWidget {
  @override
  State<ShivScreen> createState() => _ShivScreenState();
}

class _ShivScreenState extends State<ShivScreen> {




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

        AssetSource('audio/mahadev.mp3'), // Use AssetSource for local assets
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
              'assets/images/aarti_img/Shiv_aarti.png', // Replace with your background image path
              fit: BoxFit.fitWidth,
            ),
            // Foreground content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ganpati image at the top center
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Image.asset(
                    'assets/images/god_img/S.png', // Replace with your Ganpati image path
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
लवथवती विक्राळा ब्रह्माण्डी माळा।
वीषे कण्ठ काळा त्रिनेत्री ज्वाळा।
लावण्य सुन्दर मस्तकी बाळा।
तेथुनिया जळ निर्मळ वाहे झुळझुळा॥

जय देव जय देव जय श्रीशंकरा।
आरती ओवाळू तुज कर्पुरगौरा॥

कर्पुर्गौरा भोळा नयनी विशाळा।
अर्धांगी पार्वती सुमनांच्या माळा।
विभुतीचे उधळण शितिकण्ठ नीळा।
ऐसा शंकर शोभे उमावेल्हाळा॥

जय देव जय देव जय श्रीशंकरा।
आरती ओवाळू तुज कर्पुरगौरा॥

देवी दैत्यी सागरमन्थन पै केलें।
त्यामाजी अवचित हळाहळ जें उठिले।
ते त्वां असुरपणे प्राशन केलें।
नीलकण्ठ नाम प्रसिद्ध झालें॥

जय देव जय देव जय श्रीशंकरा।
आरती ओवाळू तुज कर्पुरगौरा॥

व्याघ्राम्बर फणिवरधर सुन्दर मदनारी।
पंचानन मनमोहन मुनिजन सुखकारी।
शतकोटीचें बीज वाचे उच्चारी।
रघुकुळटिळक रामदासा अन्तरी॥

जय देव जय देव जय श्रीशंकरा।
आरती ओवाळू तुज कर्पुरगौर||
''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color
                        shadows: [
                          // Shadow(
                          //   blurRadius: 5.0,
                          //   color: Colors.black.withOpacity(0.8),
                          //   offset: Offset(1.5, 1.5),
                          // ),
                        ],
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
