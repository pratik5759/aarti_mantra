import 'package:aarti_mantra/core/local/app_constant.dart';
import 'package:aarti_mantra/core/services/aarti_timer_service/aarti_timer_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DurgaScreen extends StatefulWidget {
  @override
  State<DurgaScreen> createState() => _DurgaScreenState();
}

class _DurgaScreenState extends State<DurgaScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  int highlightIndex = 0;
  late AartiTimerService durgaAarti;
  //final ScrollController _scrollController = ScrollController();
  //List<GlobalKey> _textKeys = [];


  void updateHighlightIndex(int index) {
    if (index != highlightIndex) {  // Avoid unnecessary rebuilds
      setState(() {
        highlightIndex = index;
      });
      // _scrollToHighlightedText();
    }
  }

  // void _scrollToHighlightedText() {
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     if (_scrollController.hasClients) {
  //       final context = _textKeys[highlightIndex].currentContext;
  //       if (context != null) {
  //         Scrollable.ensureVisible(
  //           context,
  //           duration: const Duration(milliseconds: 500),
  //           curve: Curves.easeInOut,
  //         );
  //       }
  //     }
  //   });
  // }


  @override
  void initState() {
    super.initState();
    // Start playing the audio when the screen is loaded
    //_textKeys = List.generate(AppConstants.durgaAartiList.length, (index) => GlobalKey());
    _playAudio();

    // Listen for when the audio completes
    _audioPlayer.onPlayerComplete.listen((event) {
      // Navigate back to the home screen when the audio finishes
      Navigator.pop(context);
      durgaAarti.stopTimer();
    });
  }

  // Play the audio from assets
  void _playAudio() async {
    if (!isPlaying) { // Only play if not already playing
      try {
        await _audioPlayer.play(
          AssetSource('audio/durga.mp3'), // Use AssetSource for local assets
        );
        debugPrint('Audio Played');
        setState(() {
          isPlaying = true;
        });
      } catch (e) {
        print("Error playing audio: $e");
      }

      durgaAarti = AartiTimerService(
        itemList: AppConstants.durgaAartiList,
        onIndexChanged: (p0) {
          updateHighlightIndex(p0); // Update highlightIndex when the index changes
        },
      );
      durgaAarti.startTimer();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.stop(); // Stop the audio when leaving the screen
    durgaAarti.stopTimer();
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
                  child: ListView.builder(
                    //controller: _scrollController,
                    itemCount: AppConstants.durgaAartiList.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          AppConstants.durgaAartiList[index].text,
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
