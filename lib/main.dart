import 'package:flutter/material.dart';
import 'package:module2_flutter/Text/example1.dart';
import 'package:module2_flutter/text/example2.dart';

import 'container/example1.dart';
import 'container/example2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: SampleContainer(),
    );
  }
}
