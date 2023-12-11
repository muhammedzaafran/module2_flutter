import 'package:flutter/material.dart';

class ContainerSample extends StatefulWidget {
  const ContainerSample({super.key});

  @override
  State<ContainerSample> createState() => _ContainerSampleState();
}

class _ContainerSampleState extends State<ContainerSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.menu_rounded),
        centerTitle: true,
        actions: const [Icon(Icons.shopping_cart_sharp)],
        title: const Text(
          "Container sample",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
// height: 200,
// width: 200,
        constraints: const BoxConstraints(
            maxHeight: 200, maxWidth: 200, minHeight: 100, minWidth: 100),
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(0.6),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image:
                    NetworkImage("https://docs.flutter.dev/assets/images/dash/"
                        "dash-fainting.gif"),
                fit: BoxFit.fill),
            color: Colors.pink,
            border: Border.all(
                color: Colors.yellow, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5)),
        child: const Text("Hello World", textScaleFactor: 2),
      ),
    );
  }
}
