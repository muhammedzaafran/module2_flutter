import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.add),
        centerTitle: true,
        actions: const [Icon(Icons.ac_unit_outlined)],
        title:  const Text(
          "NVIDIA",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Text(
          "GeForce 920M",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            wordSpacing: 10,
            fontFamily: 'BebasNeue-Regular',
          ),
        ),
      ),
    );
  }
}
