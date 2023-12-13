import 'package:flutter/material.dart';

class CalcApp extends StatefulWidget {
  const CalcApp({super.key});

  @override
  State<CalcApp> createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 220, child: Center(child: Text("Result will be shown here"))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("C"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("00"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("%"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("<--")))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("7"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("8"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("9"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("/")))
              ],
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("4"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("5"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("6"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("*")))
              ],
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("1"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("2"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("3"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("-")))
              ],
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("."))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("0"))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child:
                    ElevatedButton(onPressed: () {}, child: const Text("="))),
                SizedBox(
                    height: 85,
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("+")))
              ],
            ),
          )
        ],
      ),
    );
  }
}