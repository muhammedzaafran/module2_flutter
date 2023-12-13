import 'package:flutter/material.dart';
import 'package:module2_flutter/Button/example1.dart';
import 'package:module2_flutter/Row/example1.dart';
import 'package:module2_flutter/counterapp/counterapp.dart';

import 'button/example1.dart';
import 'calculator_app/calculator1.dart';
import 'counterapp/counterapp1.dart';
import 'image/eg1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home:CalcApp(),
    );
  }
}
