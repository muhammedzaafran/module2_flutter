import 'package:flutter/material.dart';

class StackSampleTwo extends StatefulWidget {
  const StackSampleTwo({super.key});

  @override
  State<StackSampleTwo> createState() => _StackSampleTwoState();
}

class _StackSampleTwoState extends State<StackSampleTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "S T A C K   S A M P L E",
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 15,
              fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: const Alignment(0, 5),
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.teal,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
