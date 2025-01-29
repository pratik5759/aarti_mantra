import 'dart:async';
import 'package:aarti_mantra/core/services/aarti_timer_service/models/aarti_paragraph_model.dart';

class AartiTimerService {
  final List<AartiParagraph> itemList;
  int _currentIndex = 0;
  Timer? _timer;
  Function(int)? onIndexChanged; // Callback to notify when index changes

  AartiTimerService({required this.itemList, this.onIndexChanged});

  int get currentIndex => _currentIndex;

  void startTimer() {
    if (itemList.isEmpty) return;

    _currentIndex = 0;
    _runTimer();
  }

  void _runTimer() {
    if (_currentIndex >= itemList.length) return;

    _timer?.cancel(); // Cancel any existing timer

    _timer = Timer(Duration(milliseconds: convertSecondsToMilliseconds(itemList[_currentIndex].duration)), () {
      if (_currentIndex < itemList.length - 1) {
        _currentIndex++;
        onIndexChanged?.call(_currentIndex); // Notify caller about index change
        _runTimer(); // Start the next timer
      }
    });
  }

  void stopTimer() {
    _timer?.cancel();
  }

  void dispose() {
    _timer?.cancel();
  }

  static int convertSecondsToMilliseconds(double seconds) {
    return (seconds * 1000).toInt();
  }
}
