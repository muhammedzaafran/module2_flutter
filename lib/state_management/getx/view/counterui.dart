import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/countercontroller.dart';

class CounterGetxApp extends StatelessWidget {
  const CounterGetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Sample"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(children: [
          Obx(() => Text("Count : ${counterController.count}")),
          ElevatedButton(
              onPressed: () {
                counterController.increment();
              },
              child: const Text("IncCount"))
        ]),
      ),
    );
  }
}
