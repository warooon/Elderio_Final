// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, unused_import, must_call_super, annotate_overrides, sized_box_for_whitespace

//CURRENT WORKING FILE FINAL

import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:clipboard/clipboard.dart';
import 'allInOneApps.dart';
import 'appTutorials.dart';
import 'SpeechToText.dart';
import 'TextToSpeech.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => ShowCaseWidget(
              enableAutoScroll: true,
              builder: Builder(
                builder: (context) => HomePage(),
              ),
            ),
        'AIO': (context) => const AllInOne(),
        'AIO2': (context) => const AllInOne2(),
      },
    ),
  );
}

GlobalKey _one = GlobalKey();
GlobalKey _two = GlobalKey();
GlobalKey _three = GlobalKey();
GlobalKey _four = GlobalKey();
GlobalKey _five = GlobalKey();


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This widget is the root of your application.

  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  void activate() async {
    // await FlutterClipboard.copy(textEditingController.text);
    // final value = await FlutterClipboard.paste();
    // _speak(value);
    _speak("Welcome!");
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
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context)
            .startShowCase([_one, _two, _three, _four, _five]));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg1.jpg",
                ),
                fit: BoxFit.cover),
          ),
          child: Wrap(
            children: [
              Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                          //TTS IMPLEMENTATION
                          Container(
                            height: 50,
                            width: 50,
                            child: FloatingActionButton(
                              backgroundColor:
                                  Color.fromARGB(255, 213, 79, 124),
                              onPressed: (activate),
                              child: const Icon(Icons.volume_up_rounded),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "Welcome",
                                style: TextStyle(
                                    fontFamily: "ubuntu",
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold),
                              ),
                              SelectableText(
                                "Good morning! Kunal",
                                style: TextStyle(
                                    fontFamily: "ubuntu",
                                    letterSpacing: 1,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            // backgroundColor: Colors.orangeAccent,
                            backgroundImage:
                                AssetImage("assets/images/avatar.jpg"),
                            radius: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Showcase(
                              key: _one,
                              description:
                                  "This tab will provide both easy links to download popular applications as well as one place to launch them all",
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: MediaQuery.of(context).size.width,
                                child: TextButton(
                                  onPressed: () => {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => AllInOne(),
                                      ),
                                    )
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Card(
                                    color: Color.fromARGB(255, 251, 230,
                                        255), // color: Colors.lightBlue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),

                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 0, 20),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "All in One Apps",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: "ubuntu",
                                                      color: Colors.black54,
                                                      letterSpacing: 1.2,
                                                      fontStyle:
                                                          FontStyle.italic),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Show more",
                                                      style: TextStyle(
                                                          fontFamily: "ubuntu",
                                                          color: Colors.black54,
                                                          letterSpacing: 1.2,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_right_alt,
                                                      color: Colors.black54,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Icon(
                                            Icons.apps_rounded,
                                            size: 150,
                                            color: Color.fromARGB(45, 0, 0, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width,
                              child: Showcase(
                                key: _two,
                                description:
                                    "This is our Text to Speech Feature. It has the ability to narrate any text that your provide",
                                child: TextButton(
                                  onPressed: () => {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => TextToSpeech(),
                                      ),
                                    )
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Card(
                                    color: Color.fromARGB(255, 185, 215, 255),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 0, 20),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Text To Speech",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: "ubuntu",
                                                      color: Colors.black54,
                                                      letterSpacing: 1.2,
                                                      fontStyle:
                                                          FontStyle.italic),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Show more",
                                                      style: TextStyle(
                                                          fontFamily: "ubuntu",
                                                          color: Colors.black54,
                                                          letterSpacing: 1.2,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_right_alt,
                                                      color: Colors.black54,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Icon(
                                            Icons.volume_up,
                                            size: 150,
                                            color: Color.fromARGB(45, 0, 0, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width,
                              child: Showcase(
                                key: _three,
                                description:
                                    "This is our Speech to Text feature. It listenes for audio from the microphone and transcribes it into text format",
                                child: TextButton(
                                  onPressed: () => {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => MyAppSpeech(),
                                      ),
                                    )
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Card(
                                    color: Color.fromARGB(255, 255, 198, 198),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 0, 20),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Speech to Text",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: "ubuntu",
                                                      color: Colors.black54,
                                                      letterSpacing: 1.2,
                                                      fontStyle:
                                                          FontStyle.italic),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Show more",
                                                      style: TextStyle(
                                                          fontFamily: "ubuntu",
                                                          color: Colors.black54,
                                                          letterSpacing: 1.2,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_right_alt,
                                                      color: Colors.black54,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Icon(
                                            Icons.text_fields,
                                            size: 150,
                                            color: Color.fromARGB(45, 0, 0, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width,
                              child: Showcase(
                                key: _four,
                                description:
                                    "This is where you can find a variety of tutorials on the working of various popular apps",
                                child: TextButton(
                                  onPressed: () => {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => TutorialHome(),
                                      ),
                                    )
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Card(
                                    color: Color.fromARGB(255, 206, 198, 255),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 0, 20),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "App Tutorials",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: "ubuntu",
                                                      color: Colors.black54,
                                                      letterSpacing: 1.2,
                                                      fontStyle:
                                                          FontStyle.italic),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Show more",
                                                      style: TextStyle(
                                                          fontFamily: "ubuntu",
                                                          color: Colors.black54,
                                                          letterSpacing: 1.2,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_right_alt,
                                                      color: Colors.black54,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Icon(
                                            Icons.whatsapp,
                                            size: 150,
                                            color: Color.fromARGB(45, 0, 0, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width,
                              child: Showcase(
                                key: _five,
                                description:
                                    "This is the overlay settings. This is the application you are reading this text from. It's purpose is to help users understand the various UI elements in an application",
                                child: TextButton(
                                  onPressed: () => {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Card(
                                    color: Color.fromARGB(255, 198, 255, 228),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 5, 0, 20),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "App Overlay",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "ubuntu",
                                                  color: Colors.black54,
                                                  letterSpacing: 1.2,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Show more",
                                                  style: TextStyle(
                                                      fontFamily: "ubuntu",
                                                      color: Colors.black54,
                                                      letterSpacing: 1.2,
                                                      fontStyle:
                                                          FontStyle.italic),
                                                ),
                                                Icon(
                                                  Icons.arrow_right_alt,
                                                  color: Colors.black54,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
