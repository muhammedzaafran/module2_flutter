import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  const MyCounterApp({super.key});

  @override
  State<MyCounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<MyCounterApp> {
  int count = 0;
  void incCount() {
    setState(() {
      count = count + 1;
    });
  }

  void decCount() {
    setState(() {
      count = count - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("My Counter App"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Text(
            "Counter : $count ",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35, fontStyle:FontStyle.normal),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    incCount();
                  },
                  child: const Text("INCREMENT")),
              const SizedBox(
                width: 10,
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    decCount();
                  },
                  child: const Text("DECREMENT"))
            ],
          )
        ]),
      ),
    );
  }
}
