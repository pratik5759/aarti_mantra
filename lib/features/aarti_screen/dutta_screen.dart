import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';



class DuttaScreen extends StatefulWidget {
  @override
  State<DuttaScreen> createState() => _DuttaScreenState();
}

class _DuttaScreenState extends State<DuttaScreen> {




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
        AssetSource('audio/dutta.mp3'), // Use AssetSource for local assets
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
              'assets/images/aarti_img/DattaMaharaj_aarti.png', // Replace with your background image path
              fit: BoxFit.fitWidth,
            ),
            // Foreground content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ganpati image at the top center
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset(
                    'assets/images/god_img/D.png', // Replace with your Ganpati image path
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
जय देव जय देव जय श्री गुरुदत्ता ।
आरती ओवाळिता हरली भवचिंता ॥ धृ ॥

त्रिगुणात्मक त्रैमूर्ती दत्त हा जाणा।
त्रिगुणी अवतार त्रैलोक्यराणा ।
नेती नेती शब्द न ये अनुमाना ॥
सुरवर मुनिजन योगी समाधी न ये ध्याना ॥ १ ॥

सबाह्य अभ्यंतरी तू एक दत्त ।
अभाग्यासी कैची कळेल ही मात ॥
पराही परतली तेथे कैचा हा हेत ।
जन्ममरणाचाही पुरलासे अंत ॥ २ ॥

दत्त येऊनिया ऊभा ठाकला ।
भावे साष्टांगे प्रणिपात केला ॥
प्रसन्न होऊनि आशीर्वाद दिधला ।
जन्ममरणाचा फेरा चुकवीला ॥ ३ ॥

दत्त दत्त ऐसें लागले ध्यान ।
हरपले मन झाले उन्मन ॥
मी तू पणाची झाली बोळवण ।
एका जनार्दनी श्रीदत्तध्यान ॥ ४ ॥ 

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




