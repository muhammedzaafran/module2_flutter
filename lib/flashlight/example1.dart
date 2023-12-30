import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class FlashLightApp extends StatefulWidget {
  const FlashLightApp({super.key});

  @override
  State<FlashLightApp> createState() => _FlashLightAppState();
}

class _FlashLightAppState extends State<FlashLightApp> {
  bool isTorchAvailable = false;
  bool isTorchOn = false;
  Future<void> _checkTorchAvailability() async {
    try {
      final available = await TorchLight.isTorchAvailable();
      setState(() {
        isTorchAvailable = available;
      });
    } on Exception catch (_) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Could not check if the device has an available torch")));
    }
  }
  Future<void> _toggleTorch() async {
    if (isTorchAvailable) {
      try {
        if (isTorchOn) {
          await TorchLight.disableTorch();
        } else {
          await TorchLight.enableTorch();
        }
        setState(() {
          isTorchOn = !isTorchOn;
        });
      } on Exception catch (_) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Could not toggle torch")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("No torch available")));
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    _checkTorchAvailability();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("F L A S H L I G H T",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
         alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            _toggleTorch();
          }, child:Text(
      isTorchAvailable ? 'Toggle Torch' : 'No Torch Available'),)
        ],
      )),
    );
  }
}
