import 'dart:async';

import 'package:flutter/material.dart';

import 'circle.dart';
class LinearSample extends StatefulWidget {
  const LinearSample({super.key});

  @override
  State<LinearSample> createState() => _LinearSampleState();
}

class _LinearSampleState extends State<LinearSample> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(
      seconds: 3
    ), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CircleSample() ,));

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
             LinearProgressIndicator(),
            // CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
