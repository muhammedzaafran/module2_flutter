import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        "H O M E",
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 15,
        ),
      ),
    );
  }
}
