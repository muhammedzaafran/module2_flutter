import 'package:flutter/material.dart';
import 'package:module2_flutter/Button/example1.dart';
import 'package:module2_flutter/Row/example1.dart';
import 'package:module2_flutter/counterapp/counterapp.dart';

import 'counterapp/counterapp2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: MyCounterApp(),
    );
  }
}
