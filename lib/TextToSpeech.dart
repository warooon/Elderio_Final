// ignore_for_file: file_names, unnecessary_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/services.dart';
import 'package:clipboard/clipboard.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TTS",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextToSpeech(),
    );
  }
}

class TextToSpeech extends StatelessWidget {
  TextToSpeech({super.key});

  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  void activate() async {
    await FlutterClipboard.copy(textEditingController.text);
    final value = await FlutterClipboard.paste();
    _speak(value);
  }

  _speak(String text) async {
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setPitch(1.5);
    await flutterTts.setSpeechRate(0.6);
    await flutterTts.speak(text);
    await flutterTts.setVolume(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: textEditingController,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 213, 79, 124),
                  onPressed: (activate),
                  child: const Icon(Icons.volume_up_rounded),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
