import 'package:flutter/material.dart';
import 'package:module2_flutter/navigation/named_route/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Page 3",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      body: Container(
        height: 220,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    foregroundColor:
                        MaterialStatePropertyAll(Colors.greenAccent),
                    textStyle:
                        MaterialStatePropertyAll(TextStyle(fontSize: 14))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Page4(),
                  ));
                },
                child: const Text("next page")),
          ],
        ),
      ),
    );
  }
}
