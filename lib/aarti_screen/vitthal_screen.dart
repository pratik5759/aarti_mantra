import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class VitthalScreen extends StatefulWidget {
  @override
  State<VitthalScreen> createState() => _VitthalScreenState();
}

class _VitthalScreenState extends State<VitthalScreen> {


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
        AssetSource('audio/vitthal.mp3'), // Use AssetSource for local assets
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
              'assets/images/aarti_img/VitthalBhagwan_aarti.png',
              // Replace with your background image path
              fit: BoxFit.fitWidth,
            ),
            // Foreground content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ganpati image at the top center
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Image.asset(
                    'assets/images/god_img/V.png',
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
युगे अठ्ठावीस विटेवरी ऊभा ।
वामांगी रखुमाई दिसे दिव्य शोभा ।
पुंडलिकाचे भेटी परब्रह्म आलें गा ।
चरणी वाहे भीमा उद्धारी जगा ।। 1।।
जय देव जय देव जय पांडुरंगा ।
रखुमाईवल्लभा राईच्या वल्लभा पावे जिवलगा ।।धृ. ।।


तुळसी माळा गळा कर ठेवुनी कटी ।
कांसे पीतांबर कस्तुरी लल्लाटी ।
देव सुरवर नित्य येती भेटी ।
गरूड हनुमंत पुढे उभे राहती ।।
जय देव ।। 2।।

धन्य वेणुनाद अनुक्षेत्रपाळा ।
सुवर्णाची कमळे वनमाळा गळा ।
राई रखुमाबाई राणीया सकळा ।
ओवळिती राजा विठोबा सावळा।।
जय देव ।।3।।

ओवाळू आरत्या विठोबा सावळा ।।
जय देव ।।3।।

ओवाळू आरत्या कुर्वड्या येती ।
चंद्रभागेमाजी सोडुनिया देती ।
दिंड्या पताका वैष्णव नाचती ।
पंढरीचा महिमा वर्णावा किती ।।
जय देव ।।4।।

आषाढी कार्तिकी भक्तजन येती ।
चंद्रभागेमध्यें स्नाने जे करिती।।
दर्शनहेळामात्रें तया होय मुक्ती।
केशवासी नामदेव भावे ओंवळिती।।
जय देव जय देव ।।5।।
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
