// ignore_for_file: prefer_const_constructors, file_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'Phone.dart';
import 'package:showcaseview/showcaseview.dart';

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 217, 255),
      body: Column(
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.2, 20, 30),
                child: Text(
                  "Please Select an App",
                  style: TextStyle(fontSize: 40, fontFamily: "Manrope"),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Card(
                    color: Color.fromARGB(255, 255, 198, 198),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Icon(
                            Icons.whatsapp,
                            size: 80,
                            color: Color.fromARGB(45, 0, 0, 0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Whatsapp",
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
                                          fontStyle: FontStyle.italic),
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Card(
                    color: Color.fromARGB(255, 255, 198, 198),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Icon(
                            Icons.facebook,
                            size: 80,
                            color: Color.fromARGB(45, 0, 0, 0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Facebook",
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
                                          fontStyle: FontStyle.italic),
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextButton(
                  onPressed: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ShowCaseWidget(
                          builder: Builder(builder: (context) => MyApp()),
                        ),
                      ),
                    )
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Card(
                    color: Color.fromARGB(255, 255, 198, 198),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Icon(
                            Icons.phone,
                            size: 80,
                            color: Color.fromARGB(45, 0, 0, 0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone",
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
                                          fontStyle: FontStyle.italic),
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Card(
                    color: Color.fromARGB(255, 255, 198, 198),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Icon(
                            Icons.web,
                            size: 80,
                            color: Color.fromARGB(45, 0, 0, 0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Google",
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
                                          fontStyle: FontStyle.italic),
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
