import 'package:flutter/material.dart';

import '../main.dart';

void main() {
  runApp(const MyApp());
}
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }

  class SampleApp extends StatefulWidget {
    const SampleApp({super.key});

    @override
    State<SampleApp> createState() => _SampleAppState();
  }

  class _SampleAppState extends State<SampleApp> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("SAMPLE APP"),
          backgroundColor: Colors.black,
          centerTitle: true,
          foregroundColor: Colors.teal,
        ),
        body: Container(
          child: Column(
            children: [
              Text("LOGIN")

            ],
          ),
        ),
      );
    }
  }


