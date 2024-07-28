import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';

class MainProvider extends ChangeNotifier {
  // voicetotext






  final TTSService ttsService = TTSService();
  late final FlutterTts flutterTts;
  int amount = 0;
  Timer? _timer;
  AudioPlayer? audioPlayer;
  String streamAnswer = '';
  final Gemini gemini = Gemini.instance;
  final TextEditingController controller = TextEditingController();

  MainProvider() {
    flutterTts = ttsService.flutterTts;
  }
  // text-to-voice
  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      try {
        await flutterTts.speak(text);
      } catch (e) {
        print("Error occurred while trying to speak: $e");
      }
    }
  }
// welcomeSound
  Future<void> playWelcomeSound() async {
    final player = AudioCache();
    audioPlayer = await player.play('mindOs.mp3');
    notifyListeners();
  }



// integrate gemin
  void geminiStream(String text) async {
    controller.clear();
    try {
      await gemini.streamGenerateContent(text).forEach((event) {
        streamAnswer = event.output.toString();
        speak(streamAnswer);
        notifyListeners();
      });
    } catch (error) {
      print("Error occurred while streaming content: $error");
    }
    notifyListeners();
  }
}

// Audio text-to-speech service
class TTSService {
  final FlutterTts flutterTts;

  TTSService() : flutterTts = FlutterTts() {
    _initializeTts();
  }

  Future<void> _initializeTts() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
  }
}


