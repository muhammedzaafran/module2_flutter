import 'package:flutter/material.dart';
import 'package:module2_flutter/snackbar/snackbar2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SnackBar2(),
    );
  }
}
