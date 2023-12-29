import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module2_flutter/counterapp/counterapp.dart';
import 'package:module2_flutter/freesamples/clone.dart';
import 'package:module2_flutter/menu/example1.dart';
import 'package:module2_flutter/radio_btn/eg1.dart';
import 'package:module2_flutter/state_management/getx/view/counterui.dart';
import 'package:module2_flutter/state_management/provider/view/countpage.dart';
import 'package:module2_flutter/state_management/setstate/counterapp.dart';
import 'package:module2_flutter/switch/example1.dart';
import 'package:module2_flutter/tab_bar/example1.dart';

import 'listview/example3.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SwitchSample()
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