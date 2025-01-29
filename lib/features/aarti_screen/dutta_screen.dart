import 'package:aarti_mantra/core/local/app_constant.dart';
import 'package:aarti_mantra/core/services/aarti_timer_service/aarti_timer_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';



class DuttaScreen extends StatefulWidget {
  @override
  State<DuttaScreen> createState() => _DuttaScreenState();
}

class _DuttaScreenState extends State<DuttaScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  int highlightIndex = 0;
  late AartiTimerService duttaAarti;

  void updateHighlightIndex(int index) {
    if (index != highlightIndex) {  // Avoid unnecessary rebuilds
      setState(() {
        highlightIndex = index;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Start playing the audio when the screen is loaded
    _playAudio();

    // Listen for when the audio completes
    _audioPlayer.onPlayerComplete.listen((event) {
      // Navigate back to the home screen when the audio finishes
      Navigator.pop(context);
      duttaAarti.stopTimer();
    });
  }

  // Play the audio from assets
  void _playAudio() async {
    if (!isPlaying) { // Only play if not already playing
      try {
        await _audioPlayer.play(
          AssetSource('audio/dutta.mp3'), // Use AssetSource for local assets
        );
        debugPrint('Audio Played');
        setState(() {
          isPlaying = true;
        });
      } catch (e) {
        print("Error playing audio: $e");
      }

      duttaAarti = AartiTimerService(
        itemList: AppConstants.dattatreyaAartiList,
        onIndexChanged: (p0) {
          updateHighlightIndex(p0); // Update highlightIndex when the index changes
        },
      );
      duttaAarti.startTimer();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.stop(); // Stop the audio when leaving the screen
    duttaAarti.stopTimer();
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
                  child: ListView.builder(
                    itemCount: AppConstants.dattatreyaAartiList.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          AppConstants.dattatreyaAartiList[index].text,
                          style: TextStyle(
                              color: index == highlightIndex ? Colors.red : null,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      );
                    },
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




