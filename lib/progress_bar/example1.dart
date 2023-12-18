import 'package:flutter/material.dart';

import '../main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loader(),
    );
  }
}

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SAMPLE PROGRESS BAR"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
               color: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

