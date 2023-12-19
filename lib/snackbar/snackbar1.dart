import 'package:flutter/material.dart';
class SnackBar1 extends StatefulWidget {
  const SnackBar1({super.key});

  @override
  State<SnackBar1> createState() => _SnackBar1State();
}

class _SnackBar1State extends State<SnackBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.yellow),
                ),
                onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    duration: const Duration(seconds: 3),
                    backgroundColor: Colors.black,
                    action: SnackBarAction(
                      textColor: Colors.yellow,
                      label: "Retry", onPressed: () {

                    },),
                    content: const Text("No internet",))
                
              );

            }, child: const Text("Connect to Wi-fi")),
          )
        ],
      ),
    );
  }
}
