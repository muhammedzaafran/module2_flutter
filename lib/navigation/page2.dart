import 'package:flutter/material.dart';
import 'package:module2_flutter/navigation/page1.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Page 2"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: const Text("Back"))]),
      ),
    );
  }
}
