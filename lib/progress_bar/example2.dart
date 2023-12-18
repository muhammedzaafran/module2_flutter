import 'package:flutter/material.dart';
import 'package:module2_flutter/progress_bar/example1.dart';

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
        title: const Text("PROGRESS BAR",
        style: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
          color: Colors.tealAccent,
        ),
        ),
      centerTitle: true,
        backgroundColor: Colors.black,

        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.greenAccent,
              valueColor: AlwaysStoppedAnimation(Colors.black),
              strokeWidth: 10,
            ),
            SizedBox(
              height: 16,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.black,
              valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
              minHeight: 20,
            )
          ],
        ),
      ),
    );
  }
}

