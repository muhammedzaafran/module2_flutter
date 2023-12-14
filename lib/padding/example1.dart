import 'package:flutter/material.dart';

class PaddingSample extends StatefulWidget {
  const PaddingSample({super.key});

  @override
  State<PaddingSample> createState() => _PaddingSampleState();
}

class _PaddingSampleState extends State<PaddingSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text("Padding Sample"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        alignment: Alignment.center,
        color: Colors.blueGrey,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              alignment: Alignment.center,
              height: 100,
              width: 200,
              color: Colors.yellow,
              child: const Text("Container 1"),
            ),
            
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(12),
              height: 100,
              width: 200,
              color: Colors.pink,
              child: const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text("Container 2"),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 30),
              height: 100,
              width: 200,
              color: Colors.blue,
              child: const Text("Container 3"),
            ),
          ],
        ),
      ),
    );
  }
}
