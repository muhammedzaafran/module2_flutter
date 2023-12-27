import 'package:flutter/material.dart';
import 'package:module2_flutter/Tab_bar/page1.dart';
import 'package:module2_flutter/drawer/eg1.dart';
import 'package:module2_flutter/indicators/linear.dart';
import 'package:module2_flutter/stack/example2.dart';
import 'package:module2_flutter/uri_launcher/eg1.dart';

import 'Tab_bar/example1.dart';
import 'expanded/example1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DrawerSample(),
    );
  }
}
