import 'package:flutter/material.dart';
class CardSample extends StatefulWidget {
  const CardSample({super.key});

  @override
  State<CardSample> createState() => _CardSampleState();
}

class _CardSampleState extends State<CardSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Sample"),
      ),
      body: Container(child: Column(children: [
        Card()
      ],)),
    );
  }
}
