import 'package:flutter/material.dart';
import 'package:module2_flutter/bottom_navigationbar/sample1/example1.dart';
import 'bottom_navigationbar/eg1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigation(),
    );
  }
}
