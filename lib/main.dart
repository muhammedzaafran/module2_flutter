import 'package:flutter/material.dart';
import 'package:module2_flutter/snackbar/snackbar_1.dart';
import 'freesamples/number1.dart';
import 'indicators/linear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnackBar1(),
    );
  }
}
