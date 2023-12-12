import 'package:flutter/material.dart';
import 'package:module2_flutter/Button/eg1.dart';
import 'package:module2_flutter/Row/eg1.dart';
import 'package:module2_flutter/counterapp/counterapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: CounterApp(),
    );
  }
}
