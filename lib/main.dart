import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color background_color = Colors.white;
  @override
  initState() {
    super.initState();
    background_color;
  }

  List<Widget> containers = [
    Container(
      color: Colors.deepPurple,
      width: 100,
      height: 100,
    ),
    Container(
      color: Colors.amber,
      width: 100,
      height: 100,
    )
  ];
  dynamic temp;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: background_color,
        body: SafeArea(
          child: Row(
            children: [
              containers[0],
              containers[1],
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                temp = containers[0];
                containers[0] = containers[1];
                containers[1] = temp;
              },
            );
          },
          child: const Icon(Icons.add_reaction_outlined),
        ),
      ),
    );
  }
}
