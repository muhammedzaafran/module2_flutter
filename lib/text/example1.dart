import 'package:flutter/material.dart';

class TextSample extends StatefulWidget {
  const TextSample({super.key});

  @override
  State<TextSample> createState() => _TextSampleState();
}

class _TextSampleState extends State<TextSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.menu_rounded),
        centerTitle: true,
        actions: const [Icon(Icons.shopping_cart_sharp)],
        title: const Text(
          "Text sample",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
          child: Text(
        "Learn Flutter",
        style: TextStyle(
          fontSize: 40,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          wordSpacing: 20,
          backgroundColor: Colors.yellow,
          fontFamily: 'Whisper-Regular',
          shadows: [
            Shadow(color: Colors.black, offset: Offset(5, 5), blurRadius: 5)
          ],
        ),
      )),
    );
  }
}
