import 'package:flutter/material.dart';
import 'package:module2_flutter/snackbar/snackbar1.dart';
import 'package:module2_flutter/snackbar/snackbar2.dart';

import 'bottom_navigationbar/eg1.dart';
import 'freesamples/loginform.dart';
import 'freesamples/studentform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginForm(),
    );
  }
}
