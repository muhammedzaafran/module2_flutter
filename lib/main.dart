import 'package:flutter/material.dart';
import 'package:module2_flutter/flashlight/example1.dart';

import 'grid-view/eg1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridsample()
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  GetMaterialApp(
//         debugShowCheckedModeBanner: false,
//         home:CounterGetxApp()
//     );
//   }
// }