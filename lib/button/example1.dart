import 'package:flutter/material.dart';

class ButtonSample extends StatefulWidget {
  const ButtonSample({super.key});

  @override
  State<ButtonSample> createState() => _ButtonSampleState();
}

class _ButtonSampleState extends State<ButtonSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button sample"),
      ),
      body: Container(
          child: Column(
            children: [
              TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red),
                      textStyle: const MaterialStatePropertyAll(
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
                  onPressed: () {},   child: const Text("Text button"))
               ,
              TextButton.icon(
                  onPressed: () {}, icon: const Icon(Icons.home), label: const Text("Home")),
              ElevatedButton(
                  style: const ButtonStyle(
                      textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 30)),
                      foregroundColor: MaterialStatePropertyAll(Colors.green),
                      backgroundColor: MaterialStatePropertyAll(Colors.pink)),
                  onPressed: () {},
                  child: const Text("Elevated button")),
              OutlinedButton(
                  style: const ButtonStyle(
                      side: MaterialStatePropertyAll(
                          BorderSide(color: Colors.black, width: 2))),
                  onPressed: () {},
                  child: const Text("Outlined button")),
              IconButton(onPressed: () {

              }, icon:const Icon(Icons.home))
            ],
          )),
    );
  }
}