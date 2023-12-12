import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
   const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count=0;
  void incCount(){
    setState(() {
      count=count+1;
    });
  }
  void decCount(){
   setState(() {
     count=count-1;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app"),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
           Center(
              child: Text(
            "Count : $count ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
         Row(mainAxisAlignment: MainAxisAlignment.center,children: [
           ElevatedButton(onPressed: () {
             incCount();
           }, child: const Text("Increment")),
           const SizedBox(width: 20,),
           ElevatedButton(onPressed: () {
             decCount();
           }, child: const Text("Decrement"))
         ],)
        ]),
      ),
    );
  }
}
