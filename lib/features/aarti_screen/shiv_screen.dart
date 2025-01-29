import 'package:aarti_mantra/core/local/app_constant.dart';
import 'package:aarti_mantra/core/services/aarti_timer_service/aarti_timer_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';



class ShivScreen extends StatefulWidget {
  @override
  State<ShivScreen> createState() => _ShivScreenState();
}

class _ShivScreenState extends State<ShivScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  int highlightIndex = 0;
  late AartiTimerService aartiTimerService;

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
      aartiTimerService.stopTimer();
    });
  }

  // Play the audio from assets
  void _playAudio() async {
    if (!isPlaying) { // Only play if not already playing
      try {
        await _audioPlayer.play(
          AssetSource('audio/mahadev.mp3'), // Use AssetSource for local assets
        );
        debugPrint('Audio Played');
        setState(() {
          isPlaying = true;
        });
      } catch (e) {
        print("Error playing audio: $e");
      }

      aartiTimerService = AartiTimerService(
        itemList: AppConstants.shankarAartiList,
        onIndexChanged: (index) {
          updateHighlightIndex(index); // Update highlightIndex when the index changes
        },
      );
      aartiTimerService.startTimer();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.stop(); // Stop the audio when leaving the screen
    aartiTimerService.stopTimer();
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
                  child: ListView.builder(
                    itemCount: AppConstants.shankarAartiList.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          AppConstants.shankarAartiList[index].text,
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
