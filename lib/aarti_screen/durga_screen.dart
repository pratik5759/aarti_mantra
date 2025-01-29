import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

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
        AssetSource('audio/durga.mp3'), // Use AssetSource for local assets
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
              'assets/images/aarti_img/MaaDurga_aarti.png',
              // Replace with your background image path
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
                    'assets/images/god_img/Dug.png',
                    // Replace with your Ganpati image path
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
दुर्गे दुर्घट भारी तुजविण संसारी
अनाथनाथे अंबे करुणा विस्तारी
वारी, वारी, जन्म-मरणाते वारी
हारी पडलो आता संकट निवारी

जय देवी, जय देवी महिषासुरमर्दिनी
सुरवर, ईश्वर वरदे तारक संजीवनी
जय देवी, जय देवी महिषासुरमर्दिनी
सुरवर, ईश्वर वरदे तारक संजीवनी
जय देवी, जय देवी...

त्रिभुवन भुवनी पहाता तुज ऐसे नाही
चारी श्रमले, परंतु न बोलवे काही
साही विवाद करीता पडलो प्रवाही
ते तू भक्तालागी पावसी लवलाही

जय देवी, जय देवी महिषासुरमर्दिनी
सुरवर, ईश्वर वरदे तारक संजीवनी
जय देवी, जय देवी...
सुरवर, ईश्वर वरदे तारक संजीवनी
जय देवी, जय देवी...

प्रसन्नवदने प्रसन्न होसी निजदासा
क्लेशापासुन सोडी तोडी भवपाशा
अंबे तुजवाचून कोण पुरवीन आशा?
नरहरी तल्लीन झाला पदपंकजलेशा

जय देवी, जय देवी महिषासुरमर्दिनी
सुरवर, ईश्वर वरदे तारक संजीवनी
जय देवी, जय देवी महिषासुरमर्दिनी
सुरवर, ईश्वर वरदे तारक संजीवनी
जय देवी, जय देवी...
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
