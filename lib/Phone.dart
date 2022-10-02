// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';




GlobalKey _six = GlobalKey();
GlobalKey _seven = GlobalKey();
GlobalKey _eight = GlobalKey();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context).startShowCase([_six, _seven, _eight]));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
        actions: [
          Showcase(
            key: _seven,
            description:
                "This is the menu button. Click here to access advanced functions",
            child: IconButton(
              onPressed: (() => {}),
              icon: const Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
                child: Row(
                  children: [
                    Showcase(
                      key: _six,
                      description: "This is your contact details",
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 40,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Sundar"),
                                    Text("94654312002"),
                                    Text("sundarwagj23@gmail.com"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
                child: Row(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Elon"),
                                  Text("5546821305"),
                                  Text("elontandel123@gmail.com"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
                child: Row(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Steve"),
                                  Text("4548792231"),
                                  Text("steverathod@gmail.com"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
                child: Row(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Mary"),
                                  Text("8897546332"),
                                  Text("maryrao231@gmail.com"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
              //   child: Row(
              //     children: [
              //       Row(
              //         children: [
              //           CircleAvatar(
              //             radius: 40,
              //           ),
              //           Column(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.all(20.0),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text("Rozzy"),
              //                     Text("4464879330"),
              //                     Text("Jaydeeprozzy@gmail.com"),
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Showcase(
                key: _eight,
                description: "Click here to add new contact",
                child: FloatingActionButton(
                  onPressed: (() => {}),
                  child: const Icon(Icons.add),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
