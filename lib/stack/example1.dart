import 'package:flutter/material.dart';

class StackSample extends StatefulWidget {
  const StackSample({super.key});

  @override
  State<StackSample> createState() => _StackSampleState();
}

class _StackSampleState extends State<StackSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: const Alignment(0, 0),
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
