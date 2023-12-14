import 'package:flutter/material.dart';
import 'package:module2_flutter/Button/example1.dart';
import 'package:module2_flutter/Row/example1.dart';
import 'package:module2_flutter/counterapp/counterapp.dart';
import 'package:module2_flutter/padding/eg1.dart';
import 'package:module2_flutter/textfield/example1.dart';
import 'package:module2_flutter/textfield/example2.dart';

import 'button/example1.dart';
import 'calculator_app/calculator1.dart';
import 'counterapp/counterapp1.dart';
import 'image/example1.dart';
import 'image/example2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: TextfieldSample(),
    );
  }
}
