// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AllInOne extends StatelessWidget {
  const AllInOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                0, MediaQuery.of(context).size.height * 0.1, 0, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Color.fromARGB(255, 224, 224, 224),
                    child: Icon(
                      Icons.apps,
                      color: Color.fromARGB(120, 39, 39, 39),
                      size: 80,
                    ),
                  ),
                ),
                Text(
                  'All In One Apps',
                  style: TextStyle(fontFamily: "Manrope", fontSize: 50),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    textAlign: TextAlign.justify,
                    "This feature is used to provide an easily accessible repository of the most frequenty used apps. From here the user can download and install various apps easily at the click of a button. Click the button below to continue.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                IconButton(
                  iconSize: 100,
                  onPressed: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AllInOne2(),
                      ),
                    )
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class AllInOne2 extends StatelessWidget {
  const AllInOne2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: IconButton(
            onPressed: () => {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}
