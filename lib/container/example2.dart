import 'package:flutter/material.dart';

class SampleContainer extends StatefulWidget {
  const SampleContainer({super.key});

  @override
  State<SampleContainer> createState() => _SampleContainerState();
}

class _SampleContainerState extends State<SampleContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.add_box_rounded),
        centerTitle: true,
        actions: const [Icon(Icons.add_chart)],
        title: const Text(
          "INTEL",
        ),
      ),
      body: Container(
// height: 200,
// width: 200,
        constraints: const BoxConstraints(
            maxHeight: 200, maxWidth: 200, minHeight: 100, minWidth: 100),
        alignment: Alignment.center,

        decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                    "https://www.vecteezy.com/vector-art/21515132-intel-brand-logo-symbol-black-design-software-computer-vector-illustration-with-blue-background"),
                fit: BoxFit.fill),
            color: Colors.teal,
            border: Border.all(
                color: Colors.black, width: 2, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5)),
        child: const Text("CORE i3", textScaleFactor: 2),
      ),
    );
  }
}
